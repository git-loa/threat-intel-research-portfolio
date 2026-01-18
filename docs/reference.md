# Reference Notes

This document provides supporting context for the Threat Intelligence Research Portfolio.  
It complements the main README and the detailed content found in `cti_learning/`, `tools/`, and
individual investigations.

The goal of this reference is to clarify how the portfolio is organized and how different types of
content relate to one another.

---

## What This Portfolio Contains

### **1. Full Investigations**
Located in `investigations/`, each case study includes:
- A clear problem statement  
- Evidence collection  
- Analysis and findings  
- MITRE ATT&CK mapping (when applicable)  
- A final report or disclosure summary  
- A workflow specific to that investigation  

Each investigation documents its own methodology, since CTI workflows vary depending on the case.

---

### **2. Enrichment and Automation Tools**
Located in `tools/`, these scripts support:
- WHOIS and DNS enumeration  
- HTTP header inspection  
- URLScan submissions  
- VirusTotal lookups  
- Python-based domain enrichment  

A dedicated `tools/README.md` explains usage and requirements.

---

### **3. CTI Learning Materials**
Located in `cti_learning/`, this directory contains:
- Framework scenarios (ATT&CK, Kill Chain, Diamond Model, NIST CSF)  
- Notes and diagrams  
- Mini investigations and practice exercises  
- Learning logs  

These materials demonstrate foundational CTI knowledge and continuous skill development.

---

### **4. Documentation**
The `/docs` folder contains:
- High-level overview (`overview.md`)  
- Repository structure (`repository_structure.md`)  
- This reference file  

It does **not** contain workflows, since workflows are documented inside each investigation.

---

## How to Navigate the Portfolio

- Start with the **main README** for a curated overview of selected work.  
- Explore **investigations/** for full case studies.  
- Review **tools/** if you want to understand or run enrichment scripts.  
- Browse **cti_learning/** for foundational CTI knowledge and scenario-based learning.  
- Use **docs/** for structural and contextual reference.

---

## Intended Use

This documentation is designed to:
- Support recruiters and reviewers  
- Provide clarity on how the repository is organized  
- Offer context without overwhelming the main README  
- Keep technical depth where it belongs (in investigations and tools)  

It is intentionally minimal and avoids duplicating content found elsewhere in the repository.


