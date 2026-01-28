#!/usr/bin/env bash
set -euo pipefail

URL="${1:-https://blackroad-io.amundsonalexa.workers.dev/platform}"

echo "== AI / Training headers =="
curl -sI "$URL" | grep -iE \
  'ai|train|content-usage|data-policy'
