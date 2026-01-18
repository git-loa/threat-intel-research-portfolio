
# Overview

This documentation provides a high‑level reference for the Threat Intelligence Research Portfolio.  
It consolidates the technical context behind the repository without duplicating content found in
`cti_learning/`, `tools/`, or individual investigations.

The portfolio demonstrates practical, hands‑on skills in:

- OSINT‑based infrastructure analysis  
- Phishing and scam investigation  
- Evidence collection and structured reporting  
- MITRE ATT&CK mapping  
- Bash and Python enrichment tooling  
- Reproducible investigative workflows  
- Scenario‑based CTI learning and documentation  

All investigations are performed in a controlled lab environment using Kali Linux, OSINT platforms,
and custom automation scripts. The goal is to maintain a disciplined, repeatable, and transparent
approach to threat intelligence research.

---

## Purpose of the Portfolio

This repository serves as:

- A collection of **full case studies** demonstrating real investigative reasoning  
- A library of **learning materials** covering CTI frameworks and scenarios  
- A set of **automation tools** for enrichment and evidence gathering  
- A structured, professional showcase for recruiters and collaborators  

The portfolio is intentionally modular. Each investigation includes its own workflow, evidence,
timeline, and findings, since different types of CTI investigations follow different processes.

---

## Repository Structure (High‑Level)

```
threat-intel-research-portfolio/
│
├── investigations/        # Full case studies with evidence and reports
├── tools/                 # Bash/Python enrichment and OSINT automation
├── cti_learning/          # Notes, diagrams, scenarios, and practice exercises
├── docs/                  # Technical documentation (this folder)
├── Makefile               # Automation entrypoint for enrichment workflows
└── README.md              # Portfolio homepage
```

Each directory has a clear purpose and avoids duplication.  
Detailed workflows and methodology appear **inside each investigation**, not in this folder.

---

## What This Documentation Covers

The `/docs` folder provides:

- A high‑level overview of the portfolio  
- A description of the repository structure  
- Additional reference material that supports the main README  

It does **not** define a universal CTI workflow, since different investigations require different
methodologies. Instead, workflows are documented within each case study.

---

## Intended Audience

This documentation is designed for:

- Recruiters reviewing analytical and technical capabilities  
- Security professionals evaluating investigative methodology  
- Collaborators exploring the structure of the portfolio  
- Learners interested in CTI workflows and tooling  

It complements the main README by offering deeper context without overwhelming the homepage.
