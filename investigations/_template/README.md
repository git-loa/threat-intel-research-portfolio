

# Investigation Template

This template provides a standardized structure for documenting threat intelligence investigations.  
Each section is intentionally modular so you can reuse it for phishing, scam domains, malware infrastructure, impersonation campaigns, and OSINT‑driven cases.

---

## **1. Executive Summary**
A concise overview of the threat, key findings, and impact.

Include:
- What triggered the investigation  
- What the threat turned out to be  
- Why it matters  
- High‑level conclusion  

---

## **2. Initial Trigger**
Describe how the investigation began.

Examples:
- Suspicious message received  
- Alert from a SIEM  
- User‑reported phishing attempt  
- Anomalous domain observed  

Include:
- The original lure (stored separately in `message.txt`)  
- Any immediate red flags  

---

## **3. Hypothesis**
State your initial assumption before analysis.

Examples:
- “This domain may be part of a phishing campaign.”  
- “This infrastructure may be linked to credential harvesting.”  

This section shows analytical reasoning.

---

## **4. Technical Analysis**

### **4.1 WHOIS**
- Summary of findings  
- Notable indicators (recent registration, privacy protection, suspicious registrar)  
- Raw output stored in `whois.txt`

---

### **4.2 DNS Enumeration**
- A, NS, MX records  
- Hosting provider observations  
- Any anomalies (no MX, mismatched NS, etc.)  
- Raw output stored in `dns.txt`

---

### **4.3 HTTP Inspection**
- Header analysis  
- Redirect chains  
- Server fingerprinting  
- Raw curl output stored in `http.txt` (optional)

---

### **4.4 Sandbox Results**
Include results from:
- URLScan.io  
- VirusTotal  
- Any other sandbox tools  

Raw outputs stored in:
- `urlscan.txt`  
- `vt.txt`  

---

### **4.5 Infrastructure Mapping**
Document any pivoting:
- Shared IPs  
- Related domains  
- ASN information  
- Hosting clusters  
- Reused infrastructure patterns  

---

## **5. MITRE ATT&CK Mapping**

| Technique ID | Name | Description |
|--------------|------|-------------|
| T1566.002 | Phishing: Spearphishing Link | User targeted with malicious link |
| T1583.001 | Acquire Infrastructure: Domains | Newly registered domain used for phishing |

Add or remove rows as needed.

---

## **6. Risk Assessment**

Evaluate:
- Impact  
- Likelihood  
- Severity  
- Target audience  
- Potential damage  

Use a simple scale (Low / Medium / High).

---

## **7. Conclusion**
Summarize:
- What the threat is  
- How you confirmed it  
- Final determination  
- Recommended actions  

---

## **8. Tools Used**
List tools and commands used in the investigation.

Examples:
- `whois`
- `dig`
- `curl`
- `domain_enrich.sh`
- `vt_lookup.sh`
- `urlscan_submit.sh`

---

## **9. Evidence Files**
All raw evidence should be stored in the same folder:

- `whois.txt`  
- `dns.txt`  
- `urlscan.txt`  
- `vt.txt`  
- `message.txt`  
- `timeline.md`  
- `report-to-platform.md`  
