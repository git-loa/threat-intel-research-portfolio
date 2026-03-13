# 01 — Direction

## Case Title
Microsoft Login Phishing on Compromised Subdomain (`login[.]ai[.]crforum[.]co[.]uk`)

## Summary
A suspicious Microsoft‑themed login URL was identified and submitted for analysis. Initial automated scanning suggested potential phishing activity. This document defines the direction, scope, and intelligence requirements for the investigation.

## 1. Trigger for Investigation
This investigation was initiated after identifying a suspicious Microsoft‑themed login URL in the OpenPhish feed and validating it through URLScan and VirusTotal:

> hxxps[://]login[.]ai[.]crforum[.]co[.]uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login

The hostname (`login[.]ai[.]crforum[.]co[.]uk`) visually mimics legitimate Microsoft authentication endpoints, prompting further investigation.

## 2. Intelligence Requirements (IRs)

- **IR‑1:** Determine whether the URL is part of a credential‑harvesting phishing campaign.  
- **IR‑2:** Identify the infrastructure used to host and deliver the phishing content.  
- **IR‑3:** Extract indicators of compromise (IOCs) for defensive use.  
- **IR‑4:** Assess the threat actor’s likely intent and capability, including whether the activity aligns with:
  - commodity phishing kits  
  - targeted activity  
  - financially motivated actors  
- **IR‑5:** Map observed behaviour and infrastructure to MITRE ATT&CK techniques.  
- **IR‑6:** Produce actionable intelligence, including:
  - IOC table  
  - Detection opportunities  
  - Mitigation recommendations  
  - Executive summary  

## 3. Scope of Investigation
This investigation focuses on:
- URLScan behavioural analysis  
- VirusTotal detections  
- DNS and WHOIS enrichment  
- TLS certificate review  
- HTML/JS/CSS asset analysis  
- Infrastructure attribution  
- MITRE ATT&CK mapping  
- Diamond Model  
- CTI reporting  

---

## 4. Hypothesis
The URL is part of a **Microsoft 365 credential‑harvesting phishing campaign** leveraging:
- a compromised subdomain (`login.ai.crforum.co.uk`)  
- legitimate Microsoft CDN assets  
- a cloned Microsoft login interface  
- a malicious credential submission endpoint  

This hypothesis will be validated or refuted through structured CTI analysis.

## 5. Planned Methodology
1. **Direction** — define requirements and scope  
2. **Collection** — gather raw evidence from URLScan, VirusTotal, DNS, WHOIS  
3. **Processing** — normalize indicators and remove benign Microsoft assets  
4. **Analysis** — evaluate infrastructure, behaviour, and adversary capability  
5. **Dissemination** — produce a final report with actionable intelligence  

---

## 6. Expected Deliverables
- Structured case study folder  
- IOC table  
- MITRE ATT&CK mapping  
- Diamond Model  
- Executive Brief  
- Full CTI report (`report.md`)  
- Screenshots and evidence archive  
