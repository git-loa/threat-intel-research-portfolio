# **Threat Intelligence Research Portfolio**

<p align="center">
  <img src="https://img.shields.io/badge/Language-Bash-blue" />
  <img src="https://img.shields.io/badge/Language-Python-green" />
  <img src="https://img.shields.io/badge/Focus-Threat%20Intelligence-red" />
  <img src="https://img.shields.io/badge/Discipline-OSINT-yellow" />
  <img src="https://img.shields.io/badge/Framework-MITRE%20ATT%26CK-orange" />
  <img src="https://img.shields.io/badge/Platform-Kali%20Linux-purple" />
  <img src="https://img.shields.io/badge/Version-v1.0.0-brightgreen" />
</p>

Welcome to my **Threat Intelligence Research Portfolio**, a collection of independent investigations, OSINT analyses, and enrichment tooling built to demonstrate practical skills in threat hunting, phishing analysis, domain profiling, and infrastructure investigation.

This portfolio reflects real-world Threat Intelligence workflows, including:

- Structured case studies  
- Evidence collection  
- MITRE ATT&CK mapping  
- Automation scripts  
- Reporting artifacts  
- Clear timelines and documentation  

All investigations are performed in a controlled lab environment using **Kali Linux**, OSINT tools, and custom Bash/Python enrichment scripts.

---

## **Threat Intelligence Workflow Overview**

```
Suspicious Input
      ↓
Initial Triage (red flags, lure analysis)
      ↓
WHOIS & RDAP Enumeration
      ↓
DNS Profiling (A, NS, MX, SOA)
      ↓
HTTP Inspection (headers, redirects)
      ↓
Sandboxing (URLScan, VirusTotal)
      ↓
Infrastructure Pivoting (IPs, domains, ASNs)
      ↓
MITRE ATT&CK Mapping
      ↓
Risk Assessment
      ↓
Final Report + Evidence
```

This mirrors real-world TI and SOC investigative methodology.

---

## **Repository Structure**

```
threat-intel-research-portfolio/
│
├── investigations/        # Each case study lives in its own folder
│   ├── interiewca-icu-phishing/
│   ├── _template/         # Future-proof template for new investigations
│   └── <future-case-study>/
│
├── tools/                 # Custom enrichment and OSINT automation scripts
│   ├── domain_enrich.sh
│   ├── vt_lookup.sh
│   ├── urlscan_submit.sh
│   ├── domain_enrich.py
│   ├── new_investigation.sh
│   └── README.md
│
├── Makefile               # Automation entrypoint for enrichment workflows
└── README.md              # This file
```

---

## **Case Study Index**

A growing collection of structured, evidence-driven investigations.

### **1. interiewca-icu-phishing**
A QR-based phishing campaign impersonating a blockchain employer on a job platform.  
Includes WHOIS, DNS, URLScan, VirusTotal, timeline, MITRE mapping, and a report to the platform.

### **2. <future-case-study>**
(Placeholder for upcoming investigations)

### **3. <future-case-study>**
(Placeholder for upcoming investigations)

---

## 🚀 **Getting Started**

Clone the repository:

```bash
git clone https://github.com/<your-username>/threat-intel-research-portfolio.git
cd threat-intel-research-portfolio
```

(Optional) Set your API keys:

```bash
export VT_API_KEY="your_virustotal_key"
export URLSCAN_API_KEY="your_urlscan_key"
```

Run enrichment:

```bash
make enrich DOMAIN=example.com
```

---

## **Prerequisites**

### Required Tools
- `bash`
- `curl`
- `whois`
- `dig`
- `python3`
- `jq` (optional)

### Optional Tools
- `vt-cli` (VirusTotal CLI)  
  Scripts automatically fall back to the REST API if missing.

### Recommended Environment
- Kali Linux VM  
- Isolated lab network  
- Git installed  

---

## 🛠️ **Using the Tools**

### Full enrichment
```bash
./tools/domain_enrich.sh example.com
```

### VirusTotal lookup
```bash
./tools/vt_lookup.sh example.com
```

### URLScan submission
```bash
./tools/urlscan_submit.sh http://example.com
```

### Python enrichment
```bash
python3 tools/domain_enrich.py example.com
```

---

## ⚙️ **Using the Makefile**

### Check environment
```bash
make init
```

### Full enrichment
```bash
make enrich DOMAIN=interiewca.icu
```

### VirusTotal only
```bash
make vt DOMAIN=interiewca.icu
```

### URLScan only
```bash
make urlscan DOMAIN=interiewca.icu
```

### Python workflow
```bash
make python DOMAIN=interiewca.icu
```

### Run everything
```bash
make all DOMAIN=interiewca.icu
```

---

## **Evidence Preview**

| Evidence Type | Example |
|---------------|---------|
| WHOIS Output | Registration date, registrar, privacy status |
| DNS Records | A, NS, MX, SOA enumeration |
| HTTP Headers | Redirect chains, server fingerprints |
| URLScan.io | Screenshot, DOM tree, network map |
| VirusTotal | Reputation score, related domains, passive DNS |
| Timeline | Chronological breakdown of investigative steps |
| Report | Final summary sent to platform or stakeholders |

---

## **Enrichment Tools Workflow**

```
Input Domain
      ↓
domain_enrich.sh
      ↓
+---------------------------+
| WHOIS Lookup              |
| DNS Enumeration           |
| HTTP Header Inspection    |
| URLScan Submission        |
| VirusTotal Lookup         |
+---------------------------+
      ↓
Evidence Files (.txt)
      ↓
Investigation Folder
      ↓
Final Report
```

---

## **Roadmap**

### Investigations
- Additional phishing case studies  
- Crypto scam infrastructure mapping  
- Job fraud campaigns  
- Domain clustering and pivoting analysis  

### Tooling
- Bulk domain enrichment  
- Passive DNS integration  
- ASN lookup automation  
- Python-based TI dashboard  

### Documentation
- More diagrams  
- Evidence screenshots  
- Walkthrough videos  

### Long-Term
- Malware sandboxing (isolated VM)  
- Automated IOC extraction  
- Threat actor profiling templates  

---

## **Versioning**

This project follows semantic versioning:

- **MAJOR** — Structural changes or major new capabilities  
- **MINOR** — New investigations or tooling additions  
- **PATCH** — Fixes, documentation updates, or small improvements  

Current version: **v1.0.0**

---

## **Changelog**

### **v1.0.0 — Initial Release (December 2025)**

- Added first investigation: `interiewca-icu-phishing`
- Added Bash enrichment tools (`domain_enrich.sh`, `vt_lookup.sh`, `urlscan_submit.sh`)
- Added Python enrichment tool (`domain_enrich.py`)
- Added Makefile automation for enrichment workflows
- Added investigation template (`investigations/_template/`)
- Added new investigation generator script (`new_investigation.sh`)
- Added full documentation:
  - Root README  
  - Tools README  
  - Workflow diagrams  
  - Quickstart cheat sheet  
  - Troubleshooting section  

---

## **How to Contribute**

1. Fork the repository  
2. Create a new branch  
3. Use the investigation template in `investigations/_template/`  
4. Submit a pull request with:
   - Case description  
   - Evidence files  
   - MITRE mapping  
   - Tools used  

Contributions should follow the same structure and documentation standards.

---

## **About the Author**

**Leonard Okyere Afeke**  
Cybersecurity professional with hands-on experience in SOC workflows, OSINT, domain analysis, and reproducible lab investigations.  
Passionate about building clear, structured, and evidence-driven threat intelligence reports.
