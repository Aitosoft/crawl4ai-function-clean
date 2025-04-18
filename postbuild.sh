#!/usr/bin/env bash
set -euxo pipefail

echo "[postbuild] installing Playwright Chromium"
export PLAYWRIGHT_BROWSERS_PATH="/home/site/wwwroot/.playwright"
python -m playwright install chromium

chromepath=$(find "$PLAYWRIGHT_BROWSERS_PATH" -type f -name chrome | head -n1)
chmod +x "$chromepath"
echo "[postbuild] done – chromium at $chromepath"
