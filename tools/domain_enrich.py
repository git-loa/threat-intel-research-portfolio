#!/usr/bin/env python3
"""Domain enrichment tool that gathers WHOIS, DNS, HTTP headers, and threat intelligence data."""
import os
import sys
import platform
import re
import subprocess
import requests


def run(cmd: str) -> str:
    """Run a shell command and return its output or an error message."""
    try:
        return subprocess.check_output(cmd, shell=True, text=True)
    except subprocess.CalledProcessError as e:
        return f"Error running command: {cmd}\n{e}\n"


def dns_lookup(record_type: str, domain: str) -> str:
    """Perform DNS lookups using dig on Unix and nslookup on Windows, with cleaned output."""
    system = platform.system().lower()

    if system == "windows":
        cmd = f"nslookup -type={record_type} {domain}"
        raw = run(cmd)

        lines = raw.splitlines()
        cleaned = []
        skip_soa = False

        for line in lines:
            line = line.strip()

            # Skip banners, resolver info, blank lines
            if (
                not line
                or line.startswith("Server")
                or line.startswith("Address")
                or line.startswith("Non-authoritative answer:")
                or line.startswith("Authoritative answer:")
            ):
                continue

            # Detect start of SOA block
            if "start of authority" in line.lower() or "origin" in line.lower():
                skip_soa = True
                continue

            # Skip SOA block lines
            if skip_soa:
                if any(
                    x in line.lower()
                    for x in ["serial", "refresh", "retry", "expire", "ttl"]
                ):
                    continue
                # End SOA block when unrelated content appears
                if "canonical name" in line.lower() or line == "":
                    skip_soa = False
                continue

            # Extract IPv4 addresses
            if re.match(r"^\d{1,3}(\.\d{1,3}){3}$", line):
                cleaned.append(line)
                continue

            # Extract IPv6 addresses
            if ":" in line and re.match(r"^[0-9a-fA-F:]+$", line):
                cleaned.append(line)
                continue

            # Extract CNAME chains
            if "canonical name" in line.lower():
                cleaned.append(line)
                continue

            # Extract MX records
            if record_type == "MX" and (
                "mail exchanger" in line.lower() or "mx" in line.lower()
            ):
                cleaned.append(line)
                continue

            # Extract NS records (avoid SOA metadata)
            if record_type == "NS" and (
                "nameserver" in line.lower() or re.match(r"ns\d?\.", line.lower())
            ):
                cleaned.append(line)
                continue

        return "\n".join(cleaned) + "\n"

    # Unix-like systems: dig +short
    else:
        cmd = f"dig +short {record_type} {domain}"
        return run(cmd)


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
    except requests.RequestException as e:
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
    except requests.RequestException as e:
        return f"Error submitting to URLScan: {e}\n"


def main() -> None:
    """Main function to perform domain enrichment."""
    if len(sys.argv) < 2:
        print("Usage: python3 domain_enrich.py <domain>")
        sys.exit(1)

    domain = sys.argv[1]

    print(f"=== Enrichment for: {domain} ===\n")

    print("[*] WHOIS")
    print(run(f"whois {domain}"))

    print("[*] DNS A Records")
    print(dns_lookup("A", domain))

    print("[*] DNS NS Records")
    print(dns_lookup("NS", domain))

    print("[*] DNS MX Records")
    print(dns_lookup("MX", domain))

    print("[*] HTTP Headers")
    print(run(f"curl -I -L --max-time 10 http://{domain}"))

    print("[*] URLScan.io")
    print(urlscan_submit(domain))

    print("[*] VirusTotal")
    print(vt_lookup(domain))

    print("=== Done ===")


if __name__ == "__main__":
    main()
