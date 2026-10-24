#!/bin/sh
# Compatibility launcher: use the same local-only stack as the README.
set -eu
cd "$(dirname "$0")"
if [ "$#" -eq 0 ]; then
    set -- up -d
fi
exec docker compose "$@"
