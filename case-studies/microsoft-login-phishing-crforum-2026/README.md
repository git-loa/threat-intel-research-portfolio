
# Microsoft Login Phishing on Compromised Subdomain (`login.ai.crforum.co.uk`)
### Cyber Threat Intelligence Case Study  
### Author: Leonard Okyere Afeke  
### Date: March 2026

---

## 📌 Overview

This repository contains a full end‑to‑end Cyber Threat Intelligence (CTI) investigation into a Microsoft‑themed credential‑harvesting phishing campaign hosted on a compromised subdomain:  
`login.ai.crforum.co.uk`.

The case study follows a structured intelligence lifecycle:

1. **Direction** — define scope, requirements, and hypothesis  
2. **Collection** — gather raw evidence (URLScan, VirusTotal, DNS, WHOIS)  
3. **Processing** — normalize and classify indicators  
4. **Analysis** — evaluate infrastructure, behaviour, and adversary capability  
5. **Dissemination** — provide actionable intelligence (IOCs, detections, mitigations)  
6. **Final Report** — polished narrative intelligence product  

This case demonstrates hands‑on CTI methodology, infrastructure analysis, ATT&CK mapping, and professional reporting.

---

## 📂 Repository Structure

```
/
├── 01_direction.md
├── 02_collection.md
├── 03_processing.md
├── 04_analysis.md
├── 05_dissemination.md
├── report.md
├── evidence/
│   ├── urlscan.txt
│   ├── virustotal_url.txt
│   ├── virustotal_domain.txt
│   ├── dns.txt
│   ├── whois.txt
│   └── screenshots/
└── README.md
```

---

## 🔍 Case Summary

A suspicious Microsoft login URL was identified in the OpenPhish feed. Investigation revealed:

- A **high‑fidelity clone** of the Microsoft 365 login page  
- Hosted on a **compromised subdomain** of a legitimate `.co.uk` domain  
- Delivered through **Azure Front Door**, blending into Microsoft infrastructure  
- Valid TLS certificate issued by **GeoTrust**, not Microsoft  
- VirusTotal: **13/95** vendors flagged the URL as phishing  
- Behaviour consistent with **commodity credential‑harvesting kits**  

The attacker’s objective was to steal Microsoft 365 credentials for account takeover or BEC.

---

## 🧠 Key Findings

- The phishing page uses **real Microsoft CDN assets**, making it visually identical to the legitimate login portal.  
- DNS analysis shows the subdomain was pointed to **Azure Front Door**, a common TTP for phishing delivery.  
- The registrable domain (`crforum.co.uk`) is legitimate and likely compromised.  
- The TLS certificate is valid but issued by **GeoTrust**, confirming non‑Microsoft ownership.  
- Infrastructure and behaviour align with **financially motivated phishing**, not targeted APT activity.

---

## 🛡️ Defensive Outputs

The dissemination phase provides:

- **IOC Table** (malicious, suspicious, benign)  
- **Detection opportunities** for SOC, proxy, endpoint, and cloud  
- **Mitigation recommendations** (immediate, medium‑term, long‑term)  
- **Executive brief** for leadership  

These outputs are designed for real‑world defensive use.

---

## 🧩 Frameworks & Models Used

- **MITRE ATT&CK** (full mapping)  
- **Diamond Model of Intrusion Analysis**  
- **Structured intelligence lifecycle**  
- **Infrastructure & behavioural analysis**  
- **DNS, TLS, and cloud service attribution**  

---

## 🎯 Purpose of This Case Study

This project demonstrates:

- Hands‑on CTI investigation skills  
- Ability to analyze phishing infrastructure  
- Cloud abuse detection (Azure Front Door)  
- Professional‑grade reporting  
- Clear documentation and reproducible workflows  

It is intended for:

- CTI hiring managers  
- Security researchers  
- Portfolio reviewers  
- Anyone evaluating practical threat intelligence capability  

---

## 📬 Contact

**Author:** Leonard Okyere Afeke  
**Location:** Toronto, ON  
**Focus:** Cyber Threat Intelligence, OSINT, automation, cloud abuse analysis  
