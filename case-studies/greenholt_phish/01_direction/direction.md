
# **Direction / Planning**

## **Case Title**  
Malware‑Delivery Phishing Email Impersonating SEC Marine Services (`info@mutawamarine.com`)

## **Summary**  
A suspicious email claiming to originate from “Mr. James Jackson” at SEC Marine Services was received by `webmaster@redacted.org`. The message asserts that funds have been transferred via SWIFT and includes an attached file disguised as a PDF receipt. Initial inspection revealed multiple authentication failures (SPF, DKIM, DMARC), a mismatched Reply‑To domain, and a CAB archive masquerading as a PDF. This document defines the direction, scope, and intelligence requirements for the investigation.

---

## **1. Trigger for Investigation**  
This investigation was initiated after a suspicious financial‑themed email was identified and submitted for analysis. The email contained:

- A spoofed sender address (`info@mutawamarine.com`)  
- A mismatched Reply‑To (`info.mutawamarine@mail.com`)  
- A malicious attachment (`SWT_#09674321____PDF__.CAB`)  
- A financial lure referencing a SWIFT transfer  
- Multiple authentication failures (SPF, DKIM, DMARC)

The attachment’s SHA‑256 hash:

> `2e91c533615a9bb8929ac4bb76707b2444597ce063d84a4b33525e25074fff3f`

was flagged for further malware analysis.

---

## **2. Intelligence Requirements (IRs)**

- **IR‑1:** Determine whether the email is malicious and identify the threat vector.  
- **IR‑2:** Assess whether the sender address and infrastructure are spoofed or compromised.  
- **IR‑3:** Analyze the attachment using hash‑based intelligence (VirusTotal, Hybrid Analysis).  
- **IR‑4:** Identify the malware family, behaviour, and associated infrastructure.  
- **IR‑5:** Extract indicators of compromise (IOCs) for defensive use.  
- **IR‑6:** Assess the threat actor’s likely intent and capability, including whether the activity aligns with:
  - commodity malware distribution  
  - financially motivated actors  
  - opportunistic phishing  
- **IR‑7:** Map observed behaviour and infrastructure to MITRE ATT&CK techniques.  
- **IR‑8:** Produce actionable intelligence, including:
  - IOC table  
  - Detection opportunities  
  - Mitigation recommendations  
  - Executive summary  

---

## **3. Scope of Investigation**  
This investigation focuses on:

- Full email header and body analysis  
- Authentication results (SPF, DKIM, DMARC)  
- Sender infrastructure (IP, rDNS, hosting provider)  
- Attachment metadata and hash‑based malware analysis  
- VirusTotal and Hybrid Analysis enrichment  
- MITRE ATT&CK mapping  
- Diamond Model  
- CTI reporting  

---

## **4. Hypothesis**  
The email is part of a **malware‑delivery phishing campaign** leveraging:

- a spoofed maritime‑themed sender  
- a financial lure referencing a SWIFT transfer  
- a malicious CAB archive disguised as a PDF receipt  
- VPS‑based sending infrastructure (Hostwinds)  
- mismatched Reply‑To domain for potential follow‑up engagement  

This hypothesis will be validated or refuted through structured CTI analysis.

---

## **5. Planned Methodology**

1. **Direction** — define requirements and scope  
2. **Collection** — gather raw evidence (headers, body, attachment hashes)  
3. **Processing** — normalize indicators and extract structured IOCs  
4. **Analysis** — evaluate infrastructure, malware behaviour, and adversary capability  
5. **Dissemination** — produce a final report with actionable intelligence  

---

## **6. Expected Deliverables**

- Structured case study folder  
- IOC table  
- MITRE ATT&CK mapping  
- Diamond Model  
- Executive Brief  
- Full CTI report (`report.md`)  
- Screenshots and evidence archive  
