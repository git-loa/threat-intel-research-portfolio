#!/usr/bin/env bash

DOMAIN="$1"

if [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

if [ -z "$VT_API_KEY" ]; then
    echo "Error: VT_API_KEY is not set."
    echo "Export your VirusTotal API key first:"
    echo "export VT_API_KEY=\"your_key_here\""
    exit 1
fi

echo "=== VirusTotal Lookup for: $DOMAIN ==="

if command -v vt >/dev/null 2>&1; then
    echo "[+] Using vt-cli"
    vt domain "$DOMAIN"
else
    echo "[+] vt-cli not installed — using cURL fallback"
    curl --silent --request GET \
        --url "https://www.virustotal.com/api/v3/domains/$DOMAIN" \
        --header "x-apikey: $VT_API_KEY"
fi

echo "=== Done ==="
