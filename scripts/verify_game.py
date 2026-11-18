#!/usr/bin/env python3
"""End-to-end check of the modded APK with a lawful Dune ROM on a connected device.

Usage:
    python3 scripts/verify_game.py --apk release/v3/DemulationMod_HUD_Sega_v3.apk \
        --rom "/path/to/Dune - The Battle for Arrakis (U) [T+Rus Shedevr(NewGame)&Lipetsk (02.08.2011)].gen"

The script installs the APK, selects the ROM through the Android document picker,
opens the game, waits for MainActivity, then saves a screenshot and a crash log.
Nothing in this script downloads or copies copyrighted data.
"""

import argparse
import hashlib
import os
import re
import subprocess
import sys
import time
import xml.etree.ElementTree as ET

EXPECTED_ROM_SHA256 = (
    "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"
)


def adb(*args, check=True, capture=True):
    cmd = ["adb", *args]
    result = subprocess.run(
        cmd, stdout=subprocess.PIPE if capture else None,
        stderr=subprocess.STDOUT if capture else None, text=True,
    )
    if check and result.returncode != 0:
        raise RuntimeError(f"adb {' '.join(args)} failed:\n{result.stdout}")
    return result.stdout.strip() if capture else ""


def dump_ui():
    adb("shell", "uiautomator", "dump", "/sdcard/verify_ui.xml", check=False)
    xml = adb("shell", "cat", "/sdcard/verify_ui.xml", check=False)
    if not xml.startswith("<?xml"):
        return []
    root = ET.fromstring(xml)
    nodes = []
    for node in root.iter("node"):
        text = node.get("text") or node.get("content-desc") or ""
        bounds = node.get("bounds") or ""
        match = re.match(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", bounds)
        if not match:
            continue
        x1, y1, x2, y2 = map(int, match.groups())
        nodes.append((text, (x1 + x2) // 2, (y1 + y2) // 2))
    return nodes


def find_text(text, exact=False):
    for node_text, x, y in dump_ui():
        if (node_text == text) if exact else (text in node_text):
            return x, y
    return None


def wait_for_text(text, timeout=40, exact=False):
    deadline = time.time() + timeout
    while time.time() < deadline:
        point = find_text(text, exact=exact)
        if point:
            return point
        time.sleep(1)
    raise TimeoutError(f"UI text not found in {timeout}s: {text!r}")


def tap_text(text, timeout=40, exact=False):
    x, y = wait_for_text(text, timeout=timeout, exact=exact)
    adb("shell", "input", "tap", str(x), str(y))
    return x, y


def top_activity():
    out = adb("shell", "dumpsys", "activity", "activities", check=False)
    for line in out.splitlines():
        if "topResumedActivity=" in line:
            return line.strip()
    return ""


def sha256(path):
    digest = hashlib.sha256()
    with open(path, "rb") as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apk", required=True)
    parser.add_argument("--rom", required=True)
    parser.add_argument("--output", default="screenshots/game_verified.png")
    args = parser.parse_args()

    if not os.path.isfile(args.apk) or not os.path.isfile(args.rom):
        parser.error("APK and ROM files must exist")

    rom_hash = sha256(args.rom)
    print(f"ROM SHA-256: {rom_hash}")
    if rom_hash == EXPECTED_ROM_SHA256:
        print("ROM matches the expected Russian translation profile.")
    else:
        print("WARNING: ROM hash differs from the expected translation profile.")

    devices = [line for line in adb("devices").splitlines()[1:] if "\tdevice" in line]
    if not devices:
        raise SystemExit("No connected adb device")

    os.makedirs(os.path.dirname(args.output) or ".", exist_ok=True)
    name = os.path.basename(args.rom)
    remote = f"/sdcard/Download/{name}"

    print("Installing APK...")
    adb("install", "-r", "-g", args.apk)
    adb("push", args.rom, remote)
    adb("logcat", "-c")

    print("Opening launcher...")
    # Discard any picker left open by a previous run and start from a clean task.
    adb("shell", "input", "keyevent", "4", check=False)
    adb("shell", "am", "force-stop", "com.ahsim.demulation", check=False)
    time.sleep(1)
    adb("shell", "monkey", "-p", "com.ahsim.demulation",
        "-c", "android.intent.category.LAUNCHER", "1", check=False)
    tap_text("Select ROM", timeout=40)
    print("Selecting ROM in the document picker...")
    if find_text(name, exact=True) is None:
        # The document picker opens on "Recent files"; the pushed ROM is not
        # always listed there. Go through the roots drawer to Downloads.
        tap_text("Show roots", timeout=10, exact=True)
        tap_text("Downloads", timeout=10, exact=True)
    tap_text(name, timeout=40, exact=True)
    time.sleep(3)

    ui_text = " ".join(node[0] for node in dump_ui())
    if "ROM not recognized" in ui_text:
        raise SystemExit("ROM was rejected: no compatible game profile. Nothing to launch.")

    if "MainActivity" not in top_activity():
        print("Opening game...")
        tap_text("Open game", timeout=30)
    else:
        print("Game already opened after ROM selection.")

    deadline = time.time() + 90
    while time.time() < deadline:
        if "MainActivity" in top_activity():
            break
        time.sleep(1)
    else:
        raise SystemExit("MainActivity did not open in 90 seconds")

    print("Game is running; capturing screenshot...")
    time.sleep(12)
    with open(args.output, "wb") as target:
        subprocess.run(["adb", "exec-out", "screencap", "-p"], stdout=target, check=True)
    print(f"Screenshot: {args.output}")

    crash = adb("logcat", "-d", "-b", "crash", check=False)
    with open(args.output + ".logcat.txt", "w", encoding="utf-8") as target:
        target.write(crash)
    fatal = [line for line in crash.splitlines() if "FATAL EXCEPTION" in line]
    print(f"FATAL EXCEPTION lines: {len(fatal)}")
    return 1 if fatal else 0


if __name__ == "__main__":
    sys.exit(main())
