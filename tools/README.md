

# 🛠️ Tools Overview

This directory contains automation scripts used for domain enrichment, OSINT collection, and sandbox submissions.  
All tools are designed for use in a controlled Kali Linux environment and support both CLI‑based and API‑based workflows.

The goal of these tools is to provide **repeatable, evidence‑driven enrichment** for threat intelligence investigations.

---

## 📦 Requirements

These tools rely on standard utilities available on Kali Linux:

- `bash`  
- `curl`  
- `dig`  
- `whois`  
- `jq` (optional, for JSON formatting)  
- `python3`

Optional integrations:

- **VirusTotal API**  
  ```bash
  export VT_API_KEY="your_key"
  ```

- **URLScan.io API**  
  ```bash
  export URLSCAN_API_KEY="your_key"
  ```

If `vt-cli` is installed, the scripts will use it automatically.  
If not, they fall back to the raw VirusTotal REST API via `curl`.

---

## 📁 Tools Folder Diagram

```
tools/
│
├── domain_enrich.sh        # Full enrichment workflow (WHOIS, DNS, HTTP, VT, URLScan)
├── vt_lookup.sh            # VirusTotal-only lookup (vt-cli or curl fallback)
├── urlscan_submit.sh       # URLScan.io submission script
├── domain_enrich.py        # Python enrichment workflow
├── new_investigation.sh    # Auto-creates a new investigation folder from template
└── README.md               # Documentation for all tools
```

---

## 📂 Tools Included

### **1. domain_enrich.sh**
Full enrichment workflow for any domain.

Performs:

- WHOIS lookup  
- DNS enumeration (A, NS, MX)  
- HTTP header inspection  
- URLScan submission (if API key is set)  
- VirusTotal lookup  
  - Uses `vt-cli` if installed  
  - Falls back to `curl` if not  

Usage:

```bash
./domain_enrich.sh example.com
```

---

### **2. vt_lookup.sh**
Standalone VirusTotal domain lookup.

- Uses `vt-cli` if available  
- Falls back to the VirusTotal REST API via `curl`  

Usage:

```bash
./vt_lookup.sh example.com
```

---

### **3. urlscan_submit.sh**
Submits a domain or URL to URLScan.io for sandboxing.

Usage:

```bash
./urlscan_submit.sh http://example.com
```

---

### **4. domain_enrich.py**
Python version of the enrichment workflow.

Runs:

- WHOIS  
- DNS enumeration  
- HTTP header inspection  
- URLScan submission  
- VirusTotal lookup  

Usage:

```bash
python3 tools/domain_enrich.py example.com
```

---

## 🧪 Python Enrichment Tool — Setup & Usage

### Install dependency
```bash
pip install requests
```

### Make it executable (optional)
```bash
chmod +x tools/domain_enrich.py
```

### Export API keys (optional but recommended)
```bash
export VT_API_KEY="your_virustotal_key"
export URLSCAN_API_KEY="your_urlscan_key"
```

### Run the Python enrichment tool
```bash
python3 tools/domain_enrich.py example.com
```

### Save output into an investigation folder
```bash
python3 tools/domain_enrich.py interiewca.icu \
  > investigations/interiewca-icu-phishing/evidence_python_enrich.txt
```

### Using the Makefile target
```bash
make python DOMAIN=interiewca.icu
```

---

## 🧩 New Investigation Generator

This script creates a new investigation folder based on the template.

Usage:

```bash
./new_investigation.sh suspicious-domain-jan2026
```

This produces:

```
investigations/suspicious-domain-jan2026/
```

Populated with the standard investigation structure.

---

## ❗ Troubleshooting

### **1. “VT_API_KEY is not set”**
You must export your VirusTotal API key:
```bash
export VT_API_KEY="your_key"
```
Without it, VirusTotal lookups will be skipped.

---

### **2. “URLSCAN_API_KEY is not set”**
URLScan submissions require:
```bash
export URLSCAN_API_KEY="your_key"
```

---

### **3. vt-cli not installed**
The scripts automatically fall back to:
```bash
curl https://www.virustotal.com/api/v3/...
```
No action needed unless you prefer vt-cli.

---

### **4. Permission denied when running scripts**
Make the scripts executable:
```bash
chmod +x tools/*.sh
chmod +x tools/domain_enrich.py
```

---

### **5. Python script errors about missing modules**
Install dependencies:
```bash
pip install requests
```

---

### **6. “command not found: whois / dig / curl”**
Install missing tools:
```bash
sudo apt install whois dnsutils curl
```

---

### **7. No output or empty evidence files**
Ensure the domain resolves:
```bash
dig example.com
```
Some malicious domains intentionally return no DNS records.

---

### **8. URLScan rate limits**
Free accounts may throttle submissions.  
Wait a few minutes and retry.
