#!/usr/bin/env bash
# Sobe o escritório com as configurações do .env (o modo Node não lê o .env sozinho).
set -euo pipefail
cd "$(dirname "$0")"
[ -f dist/server/index.js ] || npm run build
exec node --env-file=.env dist/server/index.js
