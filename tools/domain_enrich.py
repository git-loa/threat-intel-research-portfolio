#!/usr/bin/env python3

import sys
import subprocess
import requests
import os

def run(cmd: str) -> str:
    """Run a shell command and return its output or an error message."""
    try:
        return subprocess.check_output(cmd, shell=True, text=True)
    except Exception as e:
        return f"Error running command: {cmd}\n{e}\n"

def vt_lookup(domain: str) -> str:
    """Query VirusTotal domain endpoint using the REST API."""
    api_key = os.getenv("VT_API_KEY")
    if not api_key:
        return "VirusTotal skipped (VT_API_KEY is not set).\n"

    url = f"https://www.virustotal.com/api/v3/domains/{domain}"
    headers = {"x-apikey": api_key}

    try:
        r = requests.get(url, headers=headers, timeout=20)
        return r.text + "\n"
    except Exception as e:
        return f"Error querying VirusTotal: {e}\n"

def urlscan_submit(domain: str) -> str:
    """Submit a domain to URLScan.io."""
    api_key = os.getenv("URLSCAN_API_KEY")
    if not api_key:
        return "URLScan skipped (URLSCAN_API_KEY is not set).\n"

    url = "https://urlscan.io/api/v1/scan/"
    payload = {"url": f"http://{domain}", "visibility": "unlisted"}
    headers = {"API-Key": api_key, "Content-Type": "application/json"}

    try:
        r = requests.post(url, json=payload, headers=headers, timeout=20)
        return r.text + "\n"
    except Exception as e:
        return f"Error submitting to URLScan: {e}\n"

def main() -> None:
    if len(sys.argv) < 2:
        print("Usage: python3 domain_enrich.py <domain>")
        sys.exit(1)

    domain = sys.argv[1]

    print(f"=== Enrichment for: {domain} ===\n")

    print("[*] WHOIS")
    print(run(f"whois {domain}"))

    print("[*] DNS A Records")
    print(run(f"dig +short A {domain}"))

    print("[*] DNS NS Records")
    print(run(f"dig +short NS {domain}"))

    print("[*] DNS MX Records")
    print(run(f"dig +short MX {domain}"))

    print("[*] HTTP Headers")
    print(run(f"curl -I -L --max-time 10 http://{domain}"))

    print("[*] URLScan.io")
    print(urlscan_submit(domain))

    print("[*] VirusTotal")
    print(vt_lookup(domain))

    print("=== Done ===")

if __name__ == "__main__":
    main()
