# **Threat Intelligence Research Portfolio**

This repository showcases my work in cyber threat intelligence through structured investigations, enrichment tooling, and scenario‑based learning notes. The portfolio reflects a practical, evidence‑driven approach to analyzing suspicious domains, phishing campaigns, and attacker infrastructure, supported by Bash/Python automation and clear, concise reporting.

The goal of this portfolio is to demonstrate analytical depth, investigative discipline, and the ability to communicate complex findings in a structured and accessible way.

---

## **Selected Work**

### **interiewca‑icu Phishing Investigation**  
A QR‑based phishing campaign impersonating a blockchain employer on a job platform.  
Includes WHOIS, DNS, URLScan, VirusTotal, timeline reconstruction, and MITRE ATT&CK mapping.  
**Path:** `case-studies/interiewca-icu-phishing/`

### **MongoBleed (Coming Soon)**  
A full lifecycle CTI case study analyzing MongoBleed, a long‑running pattern of opportunistic attacks against publicly exposed MongoDB instances. Includes direction, collection, processing, analysis, and dissemination phases, all based on public OSINT. 
**Path:** `case-studies/mongoBleed/`

### **Additional Case Studies (In Progress)**  
More phishing, scam, and infrastructure investigations are being added iteratively.

---

## **Portfolio Index**

### **Investigations**
- `interiewca-icu-phishing/`  
- `_template/` (case study structure)  
- `<future-case-study>/`  

### **CTI Learning**
Scenario‑based notes and diagrams covering:
- MITRE ATT&CK  
- Kill Chain  
- Diamond Model  
- NIST CSF / 800‑61  
- STIX/TAXII  
- Threat Intelligence Tools  
- Standards vs Frameworks  
- Foundations of Threat Intelligence  

Full content available in `cti_learning/`.

### **Tools**
Custom enrichment and OSINT automation scripts:
- `domain_enrich.sh`  
- `vt_lookup.sh`  
- `urlscan_submit.sh`  
- `domain_enrich.py`  

Usage instructions are available in `tools/README.md`.

---

## **How I Work**

My investigative approach emphasizes:
- Structured triage and hypothesis‑driven analysis  
- OSINT‑based enumeration (WHOIS, DNS, RDAP, HTTP)  
- Evidence collection and timeline reconstruction  
- Infrastructure pivoting across domains, IPs, and ASNs  
- Behavioral mapping using MITRE ATT&CK  
- Clear, beginner‑friendly documentation  

I aim to balance analytical rigor with accessible communication, ensuring that each investigation is both technically sound and easy to understand.

