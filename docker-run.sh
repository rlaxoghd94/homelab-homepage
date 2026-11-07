#!/bin/sh
# Compatibility launcher: use the same dashboard Compose stack.
set -eu
cd "$(dirname "$0")"
if [ "$#" -eq 0 ]; then
    set -- up -d
fi
exec docker compose "$@"
