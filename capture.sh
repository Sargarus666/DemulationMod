#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$PROJECT_DIR"
: "${CAPTURE_URL:?Set CAPTURE_URL to the exact preview URL to capture.}"
: "${CAPTURE_DIR:?Set CAPTURE_DIR to the evidence output directory.}"
: "${RUNTIME_DIR:?RUNTIME_DIR must point to the preview runtime scripts.}"
/usr/bin/time -p test -f "$RUNTIME_DIR/scripts/default-capture.mjs"
/usr/bin/time -p mkdir -p "$CAPTURE_DIR"
# The runtime capture opens CAPTURE_URL in its own browser, waits for the main
# content to render, saves desktop/mobile evidence, and closes that browser.
# Infrastructure/navigation timeouts use exit 75; strict page/render errors use 1.
/usr/bin/time -p env CAPTURE_STRICT=1 CAPTURE_READY_SELECTOR=main CAPTURE_AUTO_START=false node "$RUNTIME_DIR/scripts/default-capture.mjs"
