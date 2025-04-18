#!/usr/bin/env bash
set -euxo pipefail

echo "[prebuild] wiping old Python packages and Oryx manifest"
rm -rf /home/site/wwwroot/.python_packages \
       /home/site/wwwroot/oryx-manifest.toml || true

echo "[prebuild] installing Playwright Chromium"
export PLAYWRIGHT_BROWSERS_PATH="/home/site/wwwroot/.playwright"
python -m playwright install chromium

chromepath=$(find "$PLAYWRIGHT_BROWSERS_PATH" -type f -name chrome | head -n1)
chmod +x "$chromepath"
echo "[prebuild] done – chromium at $chromepath"
