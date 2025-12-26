#!/usr/bin/env bash

TARGET="$1"

if [ -z "$TARGET" ]; then
    echo "Usage: $0 <url-or-domain>"
    exit 1
fi

if [ -z "$URLSCAN_API_KEY" ]; then
    echo "Error: URLSCAN_API_KEY is not set."
    echo "Export your URLScan API key first:"
    echo "export URLSCAN_API_KEY=\"your_key_here\""
    exit 1
fi

echo "=== Submitting to URLScan.io: $TARGET ==="

curl -s -X POST "https://urlscan.io/api/v1/scan/" \
    -H "API-Key: $URLSCAN_API_KEY" \
    -H "Content-Type: application/json" \
    -d "{\"url\": \"$TARGET\", \"visibility\": \"unlisted\"}"

echo ""
echo "=== Done ==="
