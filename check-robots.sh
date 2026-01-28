#!/usr/bin/env bash
set -euo pipefail

URL="${1:-https://blackroad-io.amundsonalexa.workers.dev/robots.txt}"

echo "== robots.txt =="
curl -s "$URL"
