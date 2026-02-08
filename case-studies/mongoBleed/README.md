
# **MongoBleed — Cyber Threat Intelligence Case Study**  
### A structured, lifecycle‑driven CTI analysis based entirely on public OSINT

---

## Overview

This repository contains a complete Cyber Threat Intelligence (CTI) case study analyzing MongoBleed, a long‑running pattern of opportunistic attacks targeting publicly exposed MongoDB instances left accessible without authentication.

The project demonstrates the full CTI lifecycle:

1. Direction  
2. Collection  
3. Processing  
4. Analysis  
5. Dissemination  

Each phase is documented in its own file, showing clear methodology, structured reasoning, and professional reporting practices.

All findings are based exclusively on publicly available information (OSINT).  
No scanning, exploitation, or interaction with live systems occurred.

---

## Purpose

This case study was created to:

- Strengthen CTI analytical methodology  
- Demonstrate lifecycle‑based intelligence production  
- Practice synthesizing OSINT into actionable insights  
- Produce a polished, professional‑grade intelligence report  
- Build a portfolio artifact suitable for recruiters and hiring managers  

---

## Key Intelligence Questions

The case study addresses the following questions:

- How do attackers discover exposed MongoDB instances?  
- What scanning and exploitation behaviors are commonly observed?  
- What patterns appear in ransom notes and attacker infrastructure?  
- What defensive opportunities exist for organizations?  
- How does MongoBleed map to ATT&CK, the Diamond Model, and the Kill Chain?  

---

## Repository Structure

```
/mongoBleed-case-study
│
├── 01_direction.md
├── 02_collection.md
├── 03_processing.md
├── 04_analysis.md
├── 05_dissemination.md
│
└── latex/
    └── report.tex
```

### 01_direction.md  
Defines the scope, intelligence requirements, and guiding questions.

### 02_collection.md  
Identifies the categories of publicly available sources used to understand the threat.

### 03_processing.md  
Explains how information was organized, normalized, and prepared for analysis.

### 04_analysis.md  
Provides a full CTI analysis including attacker behavior, infrastructure patterns, ransom note characteristics, and framework mappings.

### 05_dissemination.md  
The final intelligence report — polished, executive‑ready, and suitable for publication.

### latex/  
Contains the LaTeX source (`report.tex`) for generating a PDF version of the final report.

---

## Building the PDF

If you want to generate a PDF version of the final report:

### Requirements
- A LaTeX distribution (e.g., TeX Live, MiKTeX)

### Build the PDF
Run `pdflatex` (or your preferred LaTeX engine) on `report.tex`.

---

## Ethical and Methodological Notes

- No scanning, exploitation, or interaction with live systems occurred.  
- All information is derived from public, reputable OSINT sources.  
- Ransom note samples are paraphrased or reconstructed, not copied verbatim.  
- No sensitive victim data or copyrighted content is included.  

This project is strictly educational and analytical.

---

## Sources Consulted (High‑Level)

A curated list of public sources used for context and behavioral understanding:

- BleepingComputer  
- Rapid7  
- Shodan Blog  
- Censys  
- MongoDB Documentation  
- Public GitHub PoCs  
- Comparitech exposed database research  

The full list appears in `05_dissemination.md`.

---

## About the Author

This case study was created as part of a self‑directed effort to strengthen CTI methodology, analytical reasoning, and professional reporting skills.  
It reflects a commitment to clarity, structure, and real‑world intelligence practices.

---

## How to Use This Repository

- Review each phase to understand the CTI lifecycle in action  
- Use the structure as a template for your own case studies  
- Share the final report (`05_dissemination.md`) or the PDF version  
- Adapt the methodology for other threats or misconfiguration‑based attacks  

