
# Repository Structure

This document provides a clear overview of how the Threat Intelligence Research Portfolio is organized.  
Each directory has a specific purpose and contributes to a modular, professional layout that separates
investigations, tooling, learning materials, and documentation.

```
threat-intel-research-portfolio/
│
├── README.md
│   Portfolio homepage with selected work, methodology, and navigation.
│
├── case-studies/
│   Full case studies, each in its own folder.
│   Includes evidence files, timelines, analysis, and reports.
│
├── tools/
│   Bash and Python enrichment scripts used during investigations.
│   Includes a dedicated README with usage instructions.
│
├── cti_learning/
│   Scenario-based notes, diagrams, and learning materials.
│   Supports foundational CTI knowledge and structured practice.
│
├── docs/
│   Technical documentation (this folder).
│   Contains high-level reference material that supports the portfolio.
│
├── Makefile
│   Automation entrypoint for enrichment workflows.
│
└── LICENSE
    Project license information.
```

---

## Directory Purpose Summary

### **case-studies/**
Contains complete, evidence-driven case studies.  
Each investigation includes:
- Raw evidence (WHOIS, DNS, URLScan, VirusTotal, logs, etc.)
- Timeline reconstruction
- Analysis and findings
- MITRE ATT&CK mapping (when applicable)
- Final report or disclosure notes

Each investigation documents its **own workflow**, since different CTI cases require different methodologies.

---

### **tools/**
Holds custom enrichment and OSINT automation scripts.  
These scripts support:
- WHOIS and DNS enumeration  
- HTTP header inspection  
- URLScan submissions  
- VirusTotal lookups  
- Python-based domain enrichment  

A dedicated `tools/README.md` provides usage instructions.

---

### **cti_learning/**
A structured learning library containing:
- Framework scenarios (ATT&CK, Kill Chain, Diamond Model, NIST CSF)
- Notes and diagrams
- Mini investigations and practice exercises
- Learning logs

This directory demonstrates foundational CTI knowledge and continuous skill development.

---

### **docs/**
Contains technical documentation that supports the portfolio but does not belong on the homepage.  
Includes:
- Overview of the portfolio  
- Repository structure (this file)  
- Additional reference material  

It does **not** contain workflows, since workflows are documented inside each investigation.

---

### **Makefile**
Provides shortcuts for running enrichment workflows consistently and efficiently.

---

This structure keeps the portfolio clean, modular, and easy to navigate for both recruiters and technical reviewers.
