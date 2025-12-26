
# **Phishing Case Study: interiewca[.]icu — QR‑Based Job Recruitment Scam**

**Analyst:** Leonard Okyere Afeke  
**Platform:** Kali Linux  
**Date:** December 2025  
**Category:** Threat Intelligence / Phishing Infrastructure Analysis  

---

## **1. Executive Summary**

This investigation analyzes a phishing campaign impersonating a blockchain/asset‑management employer on a job platform. After applying for a “Blockchain Analyst” role, the applicant received a message directing them to complete an interview via:

**interiewca[.]icu**

Using Kali Linux tools (WHOIS, dig, curl), URLScan.io, VirusTotal, and OSINT, the domain was confirmed to be part of a **multi‑stage QR‑based phishing flow** designed to redirect victims to a malicious mobile page.

The domain is newly registered, anonymous, unbranded, and redirects to an unrelated domain hosted on AWS — all indicators of malicious infrastructure.

---

## **2. Initial Trigger**

- **Source:** Indeed job posting  
- **Employer name:** “Northgate Digital Asset Management Inc.”  
- **Message:** Invitation to complete a 10‑minute online interview  
- **Link:** `interiewca.icu`

### **Red Flags**
- Misspelled domain (“interiew” vs “interview”)  
- `.icu` TLD (high‑abuse domain)  
- No corporate website  
- No LinkedIn presence  
- No regulatory registration  
- Interview hosted on a non‑corporate domain  
- QR‑only interaction  

---

## **3. Hypothesis**

The domain is part of a phishing campaign targeting job seekers, using QR codes to redirect victims to malicious mobile pages.

---

# **4. Technical Analysis (Kali Linux)**

---

## **4.1 WHOIS Analysis**

Command:

```
whois interiewca.icu
```

Findings:

- **Created:** 2025‑12‑08  
- **Expires:** 2026‑12‑08  
- **Registrar:** Spaceship, Inc.  
- **Nameservers:** Default (`LAUNCH1/2.SPACESHIP.NET`)  
- **Registrant:** Hidden  
- **Domain age:** ~2 weeks  

**Assessment:**  
Brand‑new, anonymous, disposable domain — classic phishing infrastructure.

---

## **4.2 DNS Analysis**

Commands:

```
dig A interiewca.icu
dig NS interiewca.icu
dig MX interiewca.icu
```

Findings:

- Minimal DNS footprint  
- No MX records  
- Default nameservers  
- Low‑reputation hosting  

---

## **4.3 HTTP Header Inspection (curl)**

Command:

```
curl -I http://interiewca.icu
```

Output:

```
HTTP/1.1 301 Moved Permanently
Location: https://www.primaltech.it.com
z-urlredirect-redirected-for: 4046769133
```

### **Interpretation**
- The domain does **not** host content.  
- It immediately redirects to **primaltech.it.com**.  
- The custom header `z-urlredirect-redirected-for` indicates:
  - A tracking ID  
  - A custom redirector script  
  - A phishing kit infrastructure  

This is a **first‑stage redirector**.

---

## **4.4 URLScan.io Sandbox**

URLScan revealed:

- Bare HTML page  
- Single QR code  
- No branding  
- No scripts  
- No analytics  
- No corporate assets  

**Attack vector:** QR code → mobile → phishing page.

---

## **4.5 VirusTotal Analysis**

VirusTotal shows:

### **Categories**
- Suspicious  
- Newly Registered  

### **Timeline**
- First seen: 2025‑12‑09  
- Last analysis: 2025‑12‑24  

### **Redirection Chain**
```
http://interiewca.icu/ → https://www.primaltech.it.com/
```

### **Final URL Details**
- **Title:** “Please wait”  
- **Body size:** 816 bytes  
- **Server:** LiteSpeed + PHP 8.1  
- **Hosting IP:** 15.197.162.184 (AWS)  

### **Interpretation**
- The final domain is unrelated to the fake employer.  
- Likely a **compromised site** or **attacker‑controlled redirector**.  
- The “Please wait” page is typical of:
  - QR phishing  
  - Credential harvesting  
  - Multi‑stage redirects  

This confirms the domain is part of a **malicious redirect chain**.

---

# **5. MITRE ATT&CK Mapping**

| Technique | Description |
|----------|-------------|
| **T1566.002** | Phishing via job platform messages |
| **T1583.001** | Acquisition of malicious domains |
| **T1204** | User execution via QR code |
| **T1598.002** | Phishing for job‑related information |
| **T1105** | Ingress tool transfer (redirector infrastructure) |

---

# **6. Risk Assessment**

**Impact:**  
- Credential theft  
- Identity theft  
- Resume harvesting  
- Financial/crypto account compromise  

**Likelihood:** High  
**Severity:** High  

---

# **7. Conclusion**

The domain `interiewca[.]icu` is confirmed malicious.  
It is part of a QR‑based phishing campaign using:

- Newly registered disposable domains  
- Redirect chains  
- AWS‑hosted loader pages  
- Fake employer pretexts  

This investigation demonstrates a complete TI workflow using Kali Linux.

---

# **8. Tools Used (Kali Linux)**

### **Core Tools**
- `whois`  
- `dig`  
- `host`  
- `curl`  
- `wget`  
- `jq`  
- `openssl`  
- `vt-cli` (VirusTotal CLI)  
- URLScan.io  

### **Scripting**
- Bash  
- API integrations (URLScan, VirusTotal)

---

# **9. Evidence Files in This Folder**

- `whois.txt` — Raw WHOIS output  
- `dns.txt` — Raw DNS records  
- `urlscan.txt` — URLScan.io findings  
- `vt.txt` — VirusTotal results  
- `timeline.md` — Chronological investigation timeline  
- `report-to-indeed.md` — Abuse report sent to Indeed  
