
# **Threat Intelligence Tools — Consolidated & Grouped Notes**  
*A practical reference for hands‑on CTI research*

Threat Intelligence tools support every stage of CTI work: **collection, enrichment, analysis, detection, and sharing**.  
This note groups the most important tools into clear categories so you can quickly reference them during investigations.

---

## 🟦 **1. URL & Website Analysis Tools**  
Used to investigate suspicious links, phishing pages, redirects, and web infrastructure.

### Tools
- **UrlScan.io** — scans URLs, shows redirects, requests, screenshots  
- **VirusTotal (URL scanning)** — checks URL reputation  
- **URLHaus (Abuse.ch)** — malware distribution URLs  
- **PhishTank** — community‑verified phishing URLs  

### Use cases
- Phishing analysis  
- Infrastructure discovery  
- Extracting IOCs from malicious pages  

---

## 🟩 **2. Malware & Botnet Intelligence Tools**  
Used to analyze malware samples, track botnets, and identify C2 infrastructure.

### Tools
- **MalwareBazaar (Abuse.ch)** — malware samples + tags  
- **Feodo Tracker** — botnet C2 tracking  
- **ThreatFox** — community IOC sharing  
- **Hybrid Analysis** — sandbox analysis  
- **Any.Run** — interactive malware analysis  
- **Cuckoo Sandbox** — automated malware analysis  

### Use cases
- Malware campaign tracking  
- C2 infrastructure mapping  
- Signature and YARA rule development  

---

## 🟧 **3. Email & Phishing Analysis Tools**  
Used to analyze suspicious emails, headers, attachments, and embedded URLs.

### Tools
- **PhishTool** — full email analysis (headers, SPF/DKIM/DMARC)  
- **MxToolbox** — DNS + email header checks  
- **MailHeader Analyzer** — trace email routing  

### Use cases
- Phishing triage  
- Email forensics  
- Extracting URLs, attachments, and indicators  

---

## 🟪 **4. Threat Intelligence Platforms (TIPs)**  
Used to aggregate, enrich, correlate, and share threat intelligence.

### Tools
- **Anomali**  
- **Recorded Future**  
- **ThreatConnect**  
- **OpenCTI** (open‑source)  
- **MISP** (open‑source)  

### Use cases
- Campaign tracking  
- IOC enrichment  
- STIX/TAXII sharing  
- Threat scoring and prioritization  

---

## 🟥 **5. SIEM Tools (Security Information & Event Management)**  
Used to correlate logs, detect anomalies, and investigate alerts.

### Tools
- **Splunk**  
- **IBM QRadar**  
- **ArcSight**  
- **Elastic SIEM**  

### Use cases
- Detection and alerting  
- Threat hunting  
- Validating indicators inside the environment  

---

## 🟨 **6. EDR Tools (Endpoint Detection & Response)**  
Used to detect malicious behavior on endpoints.

### Tools
- **Microsoft Defender for Endpoint**  
- **CrowdStrike Falcon**  
- **SentinelOne**  
- **Carbon Black**  

### Use cases
- Exploitation detection  
- Persistence analysis  
- Lateral movement tracking  

---

## 🟫 **7. Network & Packet Analysis Tools**  
Used to inspect network traffic and identify suspicious communication.

### Tools
- **Wireshark**  
- **Zeek**  
- **Suricata**  
- **tcpdump**  

### Use cases
- C2 detection  
- Exfiltration analysis  
- Protocol inspection  

---

## 🟦 **8. Vulnerability Intelligence Tools**  
Used to track vulnerabilities, CVEs, and exploitation trends.

### Tools
- **NVD (National Vulnerability Database)**  
- **CVE databases**  
- **Exploit‑DB**  
- **Rapid7 AttackerKB**  
- **CISA KEV Catalog**  

### Use cases
- Vulnerability research  
- Patch prioritization  
- Understanding exploitation likelihood  

---

## 🟩 **9. Threat Feed Aggregators**  
Used to gather indicators from multiple public sources.

### Tools
- **AlienVault OTX**  
- **AbuseIPDB**  
- **Spamhaus**  
- **Emerging Threats**  

### Use cases
- IOC enrichment  
- Early warning intelligence  
- Community‑driven threat data  

---

## 🟧 **10. Dark Web Monitoring Tools**  
Used to monitor criminal forums, marketplaces, and leak sites.

### Tools
- **Flare**  
- **DarkOwl**  
- **Cybersixgill**  
- **BreachSense**  

### Use cases
- Credential leak detection  
- Data exposure monitoring  
- Early targeting signals  

---

## 🟪 **11. Reputation & Intelligence Providers**  
Used to validate IPs, domains, URLs, and file hashes.

### Tools
- **Cisco Talos Intelligence**  
- **IBM X‑Force Exchange**  
- **FortiGuard Labs**  
- **VirusTotal (reputation)**  

### Use cases
- IOC validation  
- Enrichment  
- Threat scoring  

---

# ⭐ **Quick Summary Table**

| Category | Purpose | Example Tools |
|---------|---------|----------------|
| URL Analysis | Investigate malicious URLs | UrlScan, URLHaus |
| Malware Intel | Track malware & botnets | MalwareBazaar, Feodo |
| Email Analysis | Analyze phishing emails | PhishTool |
| TIPs | Aggregate & enrich TI | Anomali, OpenCTI |
| SIEM | Log correlation | Splunk, QRadar |
| EDR | Endpoint monitoring | Defender, CrowdStrike |
| Network Tools | Traffic analysis | Wireshark, Zeek |
| Vulnerability Intel | Track CVEs | NVD, Exploit‑DB |
| Threat Feeds | IOC aggregation | OTX, Spamhaus |
| Dark Web | Criminal monitoring | Flare, DarkOwl |
| Reputation Intel | IP/domain lookups | Talos, X‑Force |

