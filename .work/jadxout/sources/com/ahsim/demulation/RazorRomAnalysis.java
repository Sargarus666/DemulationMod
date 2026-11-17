package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class RazorRomAnalysis {
    private static final int LIMIT = 8388608;
    public final DuneHackR82cRazorMissionBundle.Result bundle;
    public final int bytes;
    public final String evidence;
    public final DuneHackR82Probe.Family family;
    public final int largeMaps;
    public final int missions;
    public final boolean recognized;
    public final String sha256;
    public final int unavailableSlots;
    public final int variant;

    private RazorRomAnalysis(String sha, int length, DuneHackR82cRazorMissionBundle.Result result, DuneHackR82Probe.Result probe) {
        this.sha256 = sha;
        this.bytes = length;
        this.bundle = result;
        this.family = probe.family;
        this.evidence = probe.evidence;
        this.recognized = result != null;
        this.variant = result == null ? 0 : result.variant;
        this.missions = result == null ? 0 : result.missionsDecoded;
        this.largeMaps = result == null ? 0 : result.expandedMapMissions;
        this.unavailableSlots = result != null ? result.unsupportedScenarioSlots : 0;
    }

    public static RazorRomAnalysis inspect(InputStream input) throws IOException {
        if (input == null) {
            throw new IOException("ROM input unavailable");
        }
        ByteArrayOutputStream b = new ByteArrayOutputStream();
        byte[] chunk = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        int total = 0;
        while (true) {
            int n = input.read(chunk);
            if (n == -1) {
                break;
            }
            if (n == 0) {
                int one = input.read();
                if (one == -1) {
                    break;
                }
                if (total >= LIMIT) {
                    throw new IOException("ROM exceeds 8 MiB limit");
                }
                b.write(one);
                total++;
            } else {
                if (total > LIMIT - n) {
                    throw new IOException("ROM exceeds 8 MiB limit");
                }
                b.write(chunk, 0, n);
                total += n;
            }
        }
        byte[] rom = b.toByteArray();
        if (rom.length < 512 || rom[256] != 83 || rom[257] != 69 || rom[258] != 71 || rom[259] != 65) {
            throw new IOException("Selected file is not a normalized Sega Genesis ROM");
        }
        String sha = sha256(rom);
        DuneHackR82cRazorMissionBundle.Result audited = null;
        if (rom.length == 3145728 || rom.length == 4194304) {
            try {
                audited = DuneHackR82cRazorMissionBundle.inspect(rom, sha);
            } catch (IOException e) {
            }
        }
        DuneHackR82Probe.Result probe = DuneHackR82Probe.inspect(rom, rom.length, sha);
        return new RazorRomAnalysis(sha, rom.length, audited, probe);
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(data);
            StringBuilder out = new StringBuilder(64);
            for (byte value : digest) {
                out.append(Character.forDigit((value >>> 4) & 15, 16));
                out.append(Character.forDigit(value & 15, 16));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
