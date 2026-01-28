#!/usr/bin/env bash
set -euo pipefail

URL="${1:-https://blackroad-io.amundsonalexa.workers.dev/platform}"

echo "== Checking headers for: $URL =="
echo

curl -sI "$URL" | grep -iE \
  'x-robots-tag|content-security-policy|referrer-policy|permissions-policy|cross-origin|x-ai|x-data|cache-control'
