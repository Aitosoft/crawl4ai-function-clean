#!/usr/bin/env bash
set -euxo pipefail

echo "[prebuild] wiping old Python packages and Oryx manifest"
rm -rf /home/site/wwwroot/.python_packages \
       /home/site/wwwroot/oryx-manifest.toml || true
