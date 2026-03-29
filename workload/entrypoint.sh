#!/bin/bash
set -e

if [ "$MODE" = "server" ]; then
    exec python app.py
else
    exec /lambda-entrypoint.sh "$@"
fi
