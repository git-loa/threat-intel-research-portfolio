
# Mutawa Marine Services Phishing Analysis  
### Cyber Threat Intelligence Case Study  
**Author:** Leonard Okyere Afeke  
**Date:** 2026  

---

## Overview

This repository contains a complete Cyber Threat Intelligence (CTI) analysis of a phishing email impersonating **Mutawa Marine Services**.  
The investigation includes:

- Email header and infrastructure analysis  
- Malware triage and sandbox behavior  
- IOC extraction and enrichment  
- MITRE ATT&CK mapping  
- A full PDF‑style LaTeX report  

All analysis was performed in a controlled environment using publicly available information (OSINT).

---

## Source of the Sample

The phishing email file (`challenge.eml`) was obtained from the **TryHackMe** training room:

**_The Greenholt Phish_**

This ensures:

- Ethical sourcing  
- No interaction with real victims or production systems  
- Fully reproducible analysis  
- Safe, sandboxed malware handling  

---

## Repository Structure

```
01_direction/      # Tasking and analytic scope
02_collection/     # Raw email components
03_processing/     # Parsed data, IOC extraction, enrichment
04_analysis/       # ATT&CK mapping, malware intel, infrastructure analysis
05_reporting/      # Final report (Markdown + LaTeX PDF)
screenshots/       # Non-sensitive analysis screenshots
```

This high-level structure reflects a standard CTI workflow without listing every file.

---

## Analysis Screenshots

Non-sensitive screenshots used during analysis are included in the `screenshots/` directory.  
These images illustrate key steps such as:

- Email header inspection  
- VirusTotal triage  
- Hybrid Analysis behavior summary  
- IOC extraction workflow  

Screenshots support the written analysis but are not required to understand the report.

---

## Summary of Findings

- The phishing email spoofed **Mutawa Marine Services** using a Hostwinds VPS.  
- The attachment was a **RAR/CAB archive** disguised as a PDF receipt.  
- The extracted payload was a **Trojan Downloader** (46/63 VT detections).  
- Behavioral analysis showed:
  - Encrypted outbound traffic (SSL/TLS)  
  - TOR‑related communication  
  - Multi‑process execution  
- VirusTotal Relations linked the sample to **multiple phishing campaigns** across 2025.  
- No evidence of targeting — consistent with **commodity cybercrime activity**.

---

## Indicators of Compromise (IOCs)

A complete IOC table is available in:

- `final-ioc-table.md`  
- `final-ioc-table.csv`  

These include:

- Sender IP  
- Spoofed domain  
- Reply‑To domain  
- Archive and payload hashes  
- Behavioral indicators  
- Legitimate MX and DNS records  

---

## MITRE ATT&CK Mapping (High-Level)

| Tactic | Technique |
|--------|-----------|
| Initial Access | Phishing (T1566.001) |
| Execution | User Execution (T1204) |
| Defense Evasion | Masquerading (T1036) |
| Command & Control | Encrypted Channel (T1573), TOR (T1090.003) |
| Discovery | Process Discovery (T1057) |

---

## Full Report

The complete PDF‑style LaTeX report is available here:

- `full-report.tex`  
- `full-report.md`  

This version includes:

- Title page  
- Executive summary  
- Incident narrative  
- IOC table  
- Recommendations  
- Appendix (OSINT disclaimer + TryHackMe source)  

---

## Purpose of This Case Study

This project demonstrates:

- CTI analysis methodology  
- Structured reporting  
- Malware triage  
- IOC extraction and enrichment  
- Professional documentation practices  
- Ability to communicate clearly to mixed audiences  

It forms part of my broader CTI portfolio focused on hands‑on analysis, reproducible workflows, and high‑quality reporting.

---

## Contact

**Leonard Okyere Afeke**  
Independent CTI Researcher


