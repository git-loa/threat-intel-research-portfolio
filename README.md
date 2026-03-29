
# **Threat Intelligence Research Portfolio**

## Skills and Tooling
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Elastic Stack](https://img.shields.io/badge/Elastic%20Stack-005571?style=for-the-badge&logo=elastic&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE%20ATT%26CK-EE0000?style=for-the-badge&logo=mitre&logoColor=white)
![OSINT](https://img.shields.io/badge/OSINT-1E90FF?style=for-the-badge&logo=internet-explorer&logoColor=white)
![LaTeX](https://img.shields.io/badge/LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)


This portfolio highlights structured cyber threat intelligence investigations, vulnerability research, enrichment tooling, and scenario‑based learning. Each project applies CTI tradecraft across the intelligence cycle—direction, collection, processing, analysis, and reporting—supported by OSINT workflows, Elastic Stack telemetry, and clear, concise documentation.

### Investigation Tooling

A consistent set of OSINT and malware‑analysis tools supports each case study:

- **VirusTotal** for static malware triage, relations, and infrastructure pivoting  
- **URLScan** for behavioral analysis, redirects, and indicator extraction  
- **PhishTool** for email header parsing and phishing workflow support  
- **Hybrid Analysis** for dynamic malware behavior  
- **MXToolbox** for DNS, MX, and SMTP diagnostics  
- **WHOIS/RDAP** for domain ownership and registration timelines  
- **curl, dig, nslookup, openssl** for protocol‑level inspection  

These tools enable repeatable, evidence‑driven CTI workflows across phishing, malware, and infrastructure investigations.

---

## Start Here

A clear path through the portfolio:

1. **Case Studies** — Full investigations following a repeatable CTI workflow.  
2. **CTI Learning** — Scenario‑based notes on ATT&CK, the Kill Chain, and the Diamond Model.  
3. **CTI Lab** — Elastic Stack environment used for telemetry‑supported investigations.  
4. **Tools** — Bash/Python utilities for enrichment and automation.

---

## Selected Work
### **Mutawa Marine Services Phishing Analysis**  
Full CTI investigation into a phishing email impersonating Mutawa Marine Services, including infrastructure analysis, malware triage, IOC extraction, ATT&CK mapping, and a full LaTeX‑based intelligence report.  
**Path:** `case-studies/greenholt_phish/`

### **Microsoft Login Phishing**  
Credential‑harvesting campaign hosted on a compromised .co.uk subdomain and delivered via Azure Front Door.  
**Path:** `case-studies/microsoft-login-phishing-crforum-2026/`

### **OpenSSL CMS Buffer Overflow — CVE‑2025‑15467**  
Deep‑dive analysis of a stack buffer overflow in OpenSSL’s CMS `AuthEnvelopedData` AEAD parsing routine.  
**Path:** `case-studies/openssl-cms-buffer-overflow-CVE-2025-15467/`

### **MongoBleed**  
Investigation into exposed MongoDB instances, data leakage patterns, and attacker scanning infrastructure.  
**Path:** `case-studies/mongoBleed/`

### **interiewca‑icu QR‑Based Phishing**  
Analysis of a QR‑based phishing campaign impersonating a blockchain employer.  
**Path:** `case-studies/interiewca-icu-phishing/`

---

## Portfolio Index

### Case Studies  
- `microsoft-login-phishing-crforum-2026/`  
- `openssl-cms-buffer-overflow-CVE-2025-15467/`  
- `mongoBleed/`  
- `interiewca-icu-phishing/`  
- `greenholt_phish/`  
- `_template/` (OSINT‑only case study structure)

### CTI Learning  
Scenario‑based notes covering MITRE ATT&CK, the Kill Chain, the Diamond Model, STIX/TAXII, threat‑intel tooling, and foundational CTI concepts.  
Located in `cti_learning/`.

### Tools  
Automation and enrichment scripts for OSINT workflows:  
- `domain_enrich.sh`  
- `vt_lookup.sh`  
- `urlscan_submit.sh`  
- `domain_enrich.py`  

Documentation in `tools/README.md`.

---

## Repository Structure

```
case-studies/       # Full CTI investigations
cti_learning/       # Scenario-based learning notes
docs/               # CTI lab documentation and meta-guides
tools/              # OSINT enrichment and automation scripts
LICENSE
Makefile
README.md
```

This structure mirrors professional CTI workflows and keeps investigations, learning, and tooling clearly separated.

---

## CTI Lab Environment

A self‑hosted Elastic Stack lab supports hybrid OSINT + telemetry investigations. The environment includes Elasticsearch, Kibana, Fleet Manager, and Elastic Agent, enabling:

- process, network, DNS, and file event analysis  
- threat hunting and hypothesis‑driven investigations  
- detection rule testing  
- timeline reconstruction  

This lab provides the internal visibility needed to complement OSINT‑based investigations with real telemetry.

---

## How I Work

My investigative approach emphasizes:

- hypothesis‑driven analysis  
- OSINT‑based infrastructure enumeration  
- evidence collection and timeline reconstruction  
- ATT&CK‑aligned behavioral mapping  
- Elastic Stack telemetry for internal visibility  
- clear, structured reporting  

This portfolio reflects ongoing development across CTI tradecraft, threat hunting, and intelligence program practices.
