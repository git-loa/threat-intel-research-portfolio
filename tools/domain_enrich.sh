#!/usr/bin/env bash

DOMAIN="$1"

if [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

echo "=== Enrichment for: $DOMAIN ==="

echo ""
echo "[*] WHOIS"
whois "$DOMAIN"

echo ""
echo "[*] DNS A Records"
dig +short A "$DOMAIN"

echo ""
echo "[*] DNS NS Records"
dig +short NS "$DOMAIN"

echo ""
echo "[*] DNS MX Records"
dig +short MX "$DOMAIN"

echo ""
echo "[*] HTTP Headers"
curl -I -L --max-time 10 "http://$DOMAIN"

echo ""
echo "[*] URLScan.io (if API key set)"
if [ -n "$URLSCAN_API_KEY" ]; then
    curl -s -X POST "https://urlscan.io/api/v1/scan/" \
        -H "API-Key: $URLSCAN_API_KEY" \
        -H "Content-Type: application/json" \
        -d "{\"url\": \"http://$DOMAIN\", \"visibility\": \"unlisted\"}"
else
    echo "URLScan skipped (no API key set)"
fi

echo ""
echo "[*] VirusTotal Lookup"
if [ -n "$VT_API_KEY" ]; then
    if command -v vt >/dev/null 2>&1; then
        echo "[+] Using vt-cli"
        vt domain "$DOMAIN"
    else
        echo "[+] vt-cli not installed — using cURL fallback"
        curl --silent --request GET \
            --url "https://www.virustotal.com/api/v3/domains/$DOMAIN" \
            --header "x-apikey: $VT_API_KEY"
    fi
else
    echo "VirusTotal skipped (no API key set)"
fi

echo ""
echo "=== Done ==="
