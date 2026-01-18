
# **What Is Threat Intelligence?**  

Threat Intelligence (TI) is the practice of collecting, analyzing, and interpreting information about threats that could harm an organization. It transforms raw data into **context**, helping defenders understand what is happening, why it matters, and how to respond.

TI is not just indicators — it is **insight** that supports detection, investigation, and decision‑making.

---

## Why Threat Intelligence Matters

Modern organizations face:

- phishing campaigns  
- malware infections  
- exposed services  
- credential theft  
- ransomware  
- supply‑chain attacks  

Threat Intelligence helps answer:

- Who is attacking  
- What techniques they use  
- What infrastructure supports their activity  
- What indicators defenders should block or monitor  
- How to reduce risk  

It gives defenders a way to stay ahead instead of reacting blindly.

---

# **The Four Types of Threat Intelligence**  
*(Based on industry standards and TryHackMe’s definitions)*

Threat Intelligence is commonly divided into **four layers**, each serving a different purpose and audience.

---

## **1. Strategic Intelligence**  
**High‑level, long‑term intelligence that informs business decisions.**

Focus:  
- Trends  
- Patterns  
- Emerging threats  
- Industry‑wide risks  
- Geopolitical context  

Audience:  
- Executives  
- CISOs  
- Leadership teams  

Example:  
- A yearly ransomware trends report predicting a shift toward data‑wiping extortion in healthcare.

Purpose:  
Helps organizations understand **big‑picture risks** and plan long‑term strategy.

---

## **2. Tactical Intelligence**  
**Analysis of attacker behaviors and techniques (TTPs).**

Focus:  
- Tactics  
- Techniques  
- Procedures  
- MITRE ATT&CK mappings  
- How attackers operate  

Audience:  
- SOC analysts  
- Threat hunters  
- Detection engineers  

Example:  
- An advisory describing new abuse of T1059.005 (Visual Basic) in malspam campaigns.

Purpose:  
Helps defenders improve **detection and hunting**.

---

## **3. Operational Intelligence**  
**Campaign‑specific intelligence about an active threat.**

Focus:  
- Motives  
- Intent  
- Target selection  
- Attack campaigns  
- Threat actor goals  

Audience:  
- Incident responders  
- Threat intelligence teams  
- Security operations managers  

Example:  
- Intelligence showing that a specific threat actor is targeting financial institutions with credential‑harvesting campaigns.

Purpose:  
Helps teams prepare for or respond to **specific attacks**.

---

## **4. Technical Intelligence**  
**Low‑level, short‑lived indicators and artifacts.**

Focus:  
- IP addresses  
- Domains  
- URLs  
- File hashes  
- Malware signatures  
- Email senders  

Audience:  
- SOC analysts  
- SIEM engineers  
- Automation pipelines  

Example:  
- A list of malicious IPs associated with a phishing campaign.

Purpose:  
Helps defenders **block, detect, and enrich alerts**.

---

# Key Concepts in Threat Intelligence

### **Indicators of Compromise (IOCs)**
Technical clues that suggest malicious activity:
- domains  
- IPs  
- URLs  
- file hashes  
- email senders  

### **TTPs (Tactics, Techniques, Procedures)**
How attackers behave, mapped using **MITRE ATT&CK**.

### **Enrichment**
Adding context to raw indicators using:
- WHOIS  
- DNS  
- HTTP headers  
- URLScan  
- VirusTotal  
- Shodan  
- Censys  

### **Pivoting**
Using one clue to find more:
- domain → IP → ASN → related domains  
- phishing URL → hosting provider → other hosted scams  

### **Attribution**
Identifying the threat actor (often uncertain and not always necessary).

---

# What Threat Intelligence Analysts Actually Do

A TI analyst might:

- investigate suspicious domains  
- analyze phishing campaigns  
- track malware infrastructure  
- enrich IOCs for SOC teams  
- map attacker behavior to MITRE ATT&CK  
- write reports for technical and non‑technical audiences  
- monitor threat feeds and vulnerability disclosures  

Your portfolio investigations mirror this workflow.

---

# Threat Intelligence Workflow (Simple Version)

```
Suspicious Input
      ↓
Collection (WHOIS, DNS, URLScan, VT)
      ↓
Analysis (patterns, behavior, infrastructure)
      ↓
Context (MITRE ATT&CK, threat landscape)
      ↓
Assessment (risk, impact, likelihood)
      ↓
Reporting (clear, actionable findings)
```

This is the exact structure you’re already practicing.

---

# Why Learning TI Through Case Studies Works

By investigating real domains, vulnerabilities, and infrastructure, you learn:

- how attackers operate  
- how to analyze evidence  
- how to document findings  
- how to automate enrichment  
- how to think like a defender  
