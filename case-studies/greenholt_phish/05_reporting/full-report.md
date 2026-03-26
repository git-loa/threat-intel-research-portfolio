# Full Report  
**Phishing Email Analysis – Mutawa Marine Services Impersonation**  
**Classification:** Trojan Downloader (Commodity Malware)  
**Date:** 2025

---

# 1. Executive Summary

A phishing email impersonating Mutawa Marine Services was delivered to the recipient with a malicious RAR archive disguised as a PDF receipt. The attachment contained a Trojan Downloader, confirmed by VirusTotal (46/63 detections) and Hybrid Analysis (Threat Score 100/100). The email did not originate from the legitimate organization and instead came from a Hostwinds VPS, indicating clear domain spoofing.

The malware exhibited outbound encrypted communication (SSL/TLS) and TOR‑related behavior, consistent with downloader malware attempting to contact remote infrastructure for follow‑on payload delivery. VirusTotal’s Relations graph linked the payload to multiple phishing emails and ZIP archives across 2025, suggesting the sample is part of a broader commodity malware distribution campaign rather than a targeted attack.

No evidence indicates that the threat actor had specific interest in the recipient. The infrastructure, malware type, and delivery method all align with low‑sophistication cybercrime activity aimed at establishing initial access for secondary payload deployment such as credential stealers, RATs, or ransomware.

---

# 2. Incident Narrative

The recipient received an email impersonating Mutawa Marine Services, claiming to provide a shipping receipt and urging the user to review an attached document. The attachment, named to resemble a PDF, was actually a RAR archive containing a disguised executable. This social engineering approach is consistent with commodity phishing campaigns that rely on user interaction to initiate malware execution.

Header analysis revealed that the email did not originate from the legitimate mutawamarine.com domain. Instead, it was sent from a Hostwinds VPS (192.119.71.157), a low‑cost hosting provider frequently used for disposable phishing infrastructure. The message failed SPF, DKIM, and DMARC alignment, confirming that the sender identity was spoofed. Additionally, the Reply‑To address pointed to a mail.com account, a tactic commonly used to redirect victim responses away from the impersonated organization.

The attached archive (`SWT_#09674321____PDF__.CAB`) contained a .NET executable (`SWT_#09674321__PDF.com`) masquerading as a PDF file. VirusTotal identified the payload as malicious, with 46/63 vendors flagging the archive and 60/72 flagging the extracted executable. The Relations tab linked the sample to multiple phishing emails and ZIP archives submitted throughout 2025, indicating that the malware is part of a broader, ongoing distribution campaign rather than a targeted intrusion.

Hybrid Analysis further classified the payload as a Trojan Downloader, assigning it a Threat Score of 100/100. Behavioral analysis showed outbound SSL/TLS traffic, TOR‑related communication patterns, and multi‑process execution—behaviors consistent with downloader malware attempting to contact remote infrastructure to retrieve additional payloads. No persistence, privilege escalation, or lateral movement behaviors were observed, supporting the assessment that this sample represents an initial access stage.

Overall, the phishing email and associated malware reflect low‑sophistication cybercrime activity aimed at establishing a foothold on the victim’s system. The combination of spoofed sender identity, public email reply‑to address, VPS‑based sending infrastructure, and commodity downloader malware aligns with financially motivated threat actors distributing malware at scale.

---

# 3. Indicators of Compromise (IOCs)

| Category | Indicator | Description / Notes |
|---------|-----------|---------------------|
| **Sender IP** | `192.119.71.157` | Hostwinds VPS; origin of spoofed phishing email |
| **Spoofed Domain** | `mutawamarine.com` | Legitimate business domain impersonated by attacker |
| **Reply-To Domain** | `mail.com` | Public email provider used to redirect victim responses |
| **Attachment Name** | `SWT_#09674321____PDF__.CAB` | Malicious RAR/CAB archive disguised as a PDF receipt |
| **Extracted Payload** | `SWT_#09674321__PDF.com` | Malicious .NET executable masquerading as a document |
| **SHA-256 (Archive)** | `2e91c533615a9bb8929ac4bb76707b2444597ce063d84a4b33525e25074fff3f` | Hash of the malicious archive delivered via phishing |
| **SHA-256 (Payload)** | `05261f5a64f81a34fdde66cc82b573773e5dfa3bb5c3ccbfe2d0eef0e9d7b6c9` | Hash of the extracted Trojan Downloader executable |
| **Email Authentication** | SPF: Fail | Sender IP not authorized for domain |
| | DKIM: None | No DKIM signature present |
| | DMARC: Fail | Alignment failed; confirms spoofing |
| **Legitimate MX Record** | `mutawamarine-com.mail.protection.outlook.com` | Microsoft 365 mail infrastructure for the real domain |
| **Nameservers** | `DNS1.STABLETRANSIT.COM` | Rackspace |
| | `DNS2.STABLETRANSIT.COM` | Rackspace |
| **Behavioral Indicators** | SSL/TLS outbound traffic | Downloader attempted encrypted communication |
| | TOR-related activity | Possible anonymized outbound communication |
| | Multi-process execution | Common behavior in downloader malware |

---

# 4. Recommendations

## 4.1 Email Security Controls
- Enforce SPF, DKIM, and DMARC validation at the email gateway.
- Quarantine or reject messages that fail DMARC alignment.
- Block executable content inside compressed archives (RAR, ZIP, CAB) unless explicitly required.
- Enable attachment sandboxing for high‑risk file types.

## 4.2 User Awareness and Training
- Reinforce phishing awareness, especially around:
  - unexpected receipts or shipping documents  
  - attachments disguised as PDFs  
  - mismatched sender and reply‑to domains  
- Encourage users to report suspicious emails to the security team.

## 4.3 Endpoint Protection
- Ensure EDR/AV solutions are configured to:
  - block unknown or unsigned executables  
  - detect downloader behavior and multi‑process spawning  
  - alert on suspicious outbound encrypted traffic  
- Apply behavioral rules to detect execution of `.com` files masquerading as documents.

## 4.4 Network Security
- Block outbound connections to:
  - TOR exit nodes  
  - known malicious IPs and domains  
  - VPS providers not used by the organization  
- Enable SSL/TLS inspection where appropriate to detect hidden C2 traffic.

## 4.5 Incident Response Readiness
- Maintain playbooks for:
  - phishing triage  
  - malware downloader containment  
  - host isolation and forensic collection  
- Ensure email, endpoint, and network logs are retained for at least 90 days.

## 4.6 IOC Deployment
- Push all identified IOCs to:
  - SIEM  
  - EDR  
  - Firewall  
  - Email security gateway  
- Use the IOCs to hunt for related activity across the environment.

---

# End of Report
