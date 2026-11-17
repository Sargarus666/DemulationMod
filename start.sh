#!/usr/bin/env bash
# Build the static deployment and serve it in the foreground on PORT (default 3000).
set -euo pipefail
cd "$(dirname "$0")"

PROJECT_DIR="$(pwd)"
PORT="${PORT:-3000}"
DIST="$PROJECT_DIR/dist"
: "${OPENCODE_WEB_DIR:?OPENCODE_WEB_DIR must be set}"

# Per-command timing for every non-server step.
timed() { /usr/bin/time -p "$@"; }

# 1) Environment / dependency check (static site has no npm dependencies).
timed node --version

# 2) Build the static output into PROJECT_DIR/dist (source stays in PROJECT_DIR/site).
timed node "$PROJECT_DIR/scripts/build-site.mjs" "$PROJECT_DIR/site" "$DIST" "$PROJECT_DIR"

# 3) Publish deployment metadata for the controller.
timed node -e 'const fs=require("fs"),path=require("path");const [project,directory]=process.argv.slice(1);fs.mkdirSync(process.env.OPENCODE_WEB_DIR,{recursive:true});const file=path.join(process.env.OPENCODE_WEB_DIR,"deployment-output.json");fs.writeFileSync(file,JSON.stringify({project,directory}));console.log("wrote",file,"->",directory)' "$PROJECT_DIR" "$DIST"

# 4) Serve in the foreground (long-running; exec keeps the tmux session alive).
exec node "$PROJECT_DIR/scripts/serve-static.mjs" "$DIST" "$PORT"
