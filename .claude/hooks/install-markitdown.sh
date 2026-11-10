#!/bin/bash
# Ensure Python and Microsoft MarkItDown (https://github.com/microsoft/markitdown) are available.
set -euo pipefail
if command -v markitdown >/dev/null 2>&1; then exit 0; fi
if ! command -v python3 >/dev/null 2>&1; then
  (apt-get update -qq && apt-get install -y -qq python3 python3-pip) >/dev/null 2>&1 || true
fi
python3 -m pip install -q 'markitdown[all]' >/dev/null 2>&1 \
  || python3 -m pip install -q --break-system-packages 'markitdown[all]' >/dev/null 2>&1 \
  || python3 -m pip install -q --user 'markitdown[all]'
