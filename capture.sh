#!/usr/bin/env bash
# Capture desktop and mobile screenshots of CAPTURE_URL into CAPTURE_DIR.
# Exit 75 = temporary navigation/browser infrastructure failure, 1 = script/rendering defect.
set -euo pipefail
cd "$(dirname "$0")"

timed() { /usr/bin/time -p "$@"; }

: "${CAPTURE_URL:?CAPTURE_URL must be set}"
: "${CAPTURE_DIR:?CAPTURE_DIR must be set}"
: "${RUNTIME_DIR:?RUNTIME_DIR must be set}"

timed mkdir -p "$CAPTURE_DIR"

# default-capture opens CAPTURE_URL, waits for render, writes final-desktop.png and
# final-mobile.png, closes its own browser, and maps transient failures to exit 75.
set +e
timed node "$RUNTIME_DIR/scripts/default-capture.mjs"
status=$?
set -e
if [[ "$status" -ne 0 ]]; then
  exit "$status"
fi

# A clean exit must still have produced both frames, otherwise it is a rendering defect.
for view in desktop mobile; do
  if [[ ! -s "$CAPTURE_DIR/final-$view.png" ]]; then
    echo "missing capture: $CAPTURE_DIR/final-$view.png" >&2
    exit 1
  fi
done

echo "captured desktop + mobile into $CAPTURE_DIR"
