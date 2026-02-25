
# **Threat Intelligence Research Portfolio**

## Badges

<!-- Languages -->
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Markdown](https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white)

<!-- Tools & Platforms -->
![Elastic Stack](https://img.shields.io/badge/Elastic%20Stack-005571?style=for-the-badge&logo=elastic&logoColor=white)
![Kibana](https://img.shields.io/badge/Kibana-005571?style=for-the-badge&logo=kibana&logoColor=white)
![Elasticsearch](https://img.shields.io/badge/Elasticsearch-005571?style=for-the-badge&logo=elasticsearch&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

<!-- CTI & Security -->
![MITRE ATT&CK](https://img.shields.io/badge/MITRE%20ATT%26CK-EE0000?style=for-the-badge&logo=mitre&logoColor=white)
![STIX/TAXII](https://img.shields.io/badge/STIX%2FTAXII-0A0A0A?style=for-the-badge&logo=oasis&logoColor=white)
![OSINT](https://img.shields.io/badge/OSINT-1E90FF?style=for-the-badge&logo=internet-explorer&logoColor=white)

<!-- Development & Documentation -->
![Makefile](https://img.shields.io/badge/Makefile-000000?style=for-the-badge&logo=gnu&logoColor=white)
![LaTeX](https://img.shields.io/badge/LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)


This repository showcases my work in cyber threat intelligence through structured investigations, vulnerability case studies, enrichment tooling, and scenario‑based learning notes. The portfolio reflects a practical, evidence‑driven approach to analyzing phishing campaigns, exposed services, suspicious domains, and attacker infrastructure — supported by Bash/Python automation, Elastic Stack telemetry, and clear, concise reporting.

The goal of this portfolio is to demonstrate analytical depth, investigative discipline, and the ability to communicate complex findings in a structured and accessible way. Each investigation applies core CTI tradecraft, including the intelligence cycle, OSINT‑based collection, hypothesis‑driven analysis, ATT&CK mapping, structured analytic techniques, and hybrid OSINT + internal telemetry workflows.

---

## **Start Here**

If you're new to this repository, here’s the best way to explore it:

1. **Begin with the completed case studies**  
   These showcase full CTI investigations with clear structure, OSINT collection, analysis, and reporting.

2. **Review the CTI Learning section**  
   Scenario-based notes that explain core concepts like ATT&CK, the Kill Chain, and the Diamond Model.

3. **Explore the CTI Lab documentation**  
   The `docs/cti_lab/` folder outlines how I use Elastic Stack telemetry to support threat hunting and hybrid investigations.

4. **Check the Next Case Studies + Progress Tracker**  
   This shows what I’m actively building and how the portfolio is evolving.

5. **Browse the Tools folder**  
   Contains Bash/Python scripts for enrichment, automation, and OSINT workflows.

This structure mirrors real-world CTI workflows and makes it easy to navigate investigations, learning materials, and supporting tools.

---

## **Selected Work**

### **MongoBleed (Completed)**  
A deep‑dive investigation into exposed MongoDB instances, data leakage, and attacker infrastructure.  
Includes full CTI lifecycle documentation and a LaTeX‑generated intelligence report.  
**Path:** `case-studies/mongoBleed/`

**Skills Demonstrated:**  
Intelligence cycle • Vulnerability analysis • Data exposure assessment • Infrastructure pivoting • Structured analytic techniques • ATT&CK mapping • Report writing (technical + executive)

---

### **interiewca‑icu Phishing Investigation (Completed)**  
A QR‑based phishing campaign impersonating a blockchain employer on a job platform.  
Includes WHOIS, DNS, URLScan, VirusTotal, timeline reconstruction, and MITRE ATT&CK mapping.  
**Path:** `case-studies/interiewca-icu-phishing/`

**Skills Demonstrated:**  
OSINT collection • DNS analysis • WHOIS/RDAP • URLScan pivoting • Infrastructure analysis • Timeline reconstruction • ATT&CK mapping • Threat communication

---

## **Next Case Studies**

To continue developing full-spectrum CTI tradecraft, several new case studies are planned. These investigations combine OSINT, structured analysis, and Elastic Stack telemetry to demonstrate threat hunting, incident reconstruction, and ATT&CK‑aligned behavioral analysis.

### **Upcoming Case Studies**
- **OpenSSL CMS Buffer Overflow (CVE‑2025‑15467)**  
  Hybrid OSINT + telemetry case study focusing on exploitation mechanics, certificate parsing behavior, and ATT&CK mapping.

- **Erlang/OTP SSH Protocol Injection (CVE‑2025‑32433)**  
  Deep dive into protocol-level exploitation, infrastructure analysis, and simulated SSH telemetry.

- **Office OLE Mitigation Bypass (CVE‑2026‑21514)**  
  Phishing‑focused investigation with user-behavior telemetry, process chains, and timeline reconstruction.

- **Elastic Threat Hunting Pack**  
  A series of hunts demonstrating hypothesis-driven analysis, detection triage, and internal telemetry correlation.

- **Infrastructure & Scam Campaign Investigations**  
  Additional OSINT‑driven case studies covering domains, hosting patterns, and attacker infrastructure.

---

## **Progress Tracker**

This tracker reflects the current development status of upcoming case studies and CTI projects.  
Items will be updated as each investigation moves from planning → collection → analysis → publication.

### **Case Study Progress**
- [ ] OpenSSL CMS Buffer Overflow (CVE‑2025‑15467)
- [ ] Erlang/OTP SSH Protocol Injection (CVE‑2025‑32433)
- [ ] Office OLE Mitigation Bypass (CVE‑2026‑21514)
- [ ] Elastic Threat Hunting Pack
- [ ] Infrastructure & Scam Campaign Investigations

### **Supporting CTI Outputs**
- [ ] Hunt Reports (Elastic Stack)
- [ ] Flash Briefs
- [ ] RFI Responses
- [ ] Intelligence Estimates
- [ ] APT Profile (OSINT‑Only)
- [ ] CTI Program Documents (PIRs, Metrics, Stakeholder Alignment)

---

## **Portfolio Index**

### **Case Studies**
- `interiewca-icu-phishing/`  
- `mongoBleed/`  
- `_template/` (OSINT-only case study structure)  
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

## **Repository Structure**

This repository is organized to reflect professional CTI workflows, including case studies, learning materials, tooling, and lab documentation.

```
.
├── case-studies/               # Full CTI investigations and reports
│   ├── interiewca-icu-phishing/
│   ├── mongoBleed/
│   └── _template/              # OSINT-only case study template
│
├── cti_learning/               # Scenario-based CTI learning notes
│   ├── diagrams/
│   ├── learning_log/
│   ├── mini_investigations/
│   └── notes/
│
├── docs/                       # Meta-documentation and CTI lab materials
│   ├── overview.md
│   ├── reference.md
│   ├── repository_structure.md
│   └── cti_lab/
│       ├── roadmap.md
│       ├── simulations.md
│       ├── lab_capabilities.md
│       └── project_plan.md
│
├── tools/                      # OSINT enrichment and automation scripts
│   ├── domain_enrich.py
│   ├── domain_enrich.sh
│   ├── urlscan_submit.sh
│   ├── vt_lookup.sh
│   └── README.md
│
├── LICENSE
├── Makefile
└── README.md
```

Each directory is intentionally structured to support repeatable CTI workflows, clear documentation, and portfolio-ready investigations.

---

## **CTI Lab Environment**

This portfolio is supported by a self‑hosted Elastic Stack lab designed to simulate real-world CTI workflows. The environment includes:

- **Elasticsearch** for log storage  
- **Kibana** for analysis, hunting, and visualization  
- **Fleet Manager** for endpoint management  
- **Elastic Agent** deployed on Ubuntu endpoints  

The lab enables:

- Internal telemetry analysis (process, network, DNS, file events)  
- Threat hunting and hypothesis-driven investigations  
- Detection rule testing and alert triage  
- Timeline reconstruction for simulated incidents  
- Hybrid OSINT + telemetry case studies  
- Structured analytic techniques applied to real data  

This environment allows me to practice professional CTI workflows safely, ethically, and at production quality.

---

## **How I Work**

My investigative approach emphasizes:
- Structured triage and hypothesis‑driven analysis  
- OSINT‑based enumeration (WHOIS, DNS, RDAP, HTTP)  
- Evidence collection and timeline reconstruction  
- Infrastructure pivoting across domains, IPs, and ASNs  
- Behavioral mapping using MITRE ATT&CK  
- Internal telemetry analysis using Elastic Stack  
- Clear, beginner‑friendly documentation  

I aim to balance analytical rigor with accessible communication, ensuring that each investigation is both technically sound and easy to understand. This portfolio reflects ongoing development across CTI tradecraft, including structured analysis, reporting, threat hunting, and program‑level intelligence practices.

