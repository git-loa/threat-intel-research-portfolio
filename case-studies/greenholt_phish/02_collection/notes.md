
# Notes — Raw Observations

## **Case Study: The Greenholt Phish — Analyst Notes**

### **Email Overview**
- Sender (claimed): `info@mutawamarine.com`
- Display name: **Mr. James Jackson**
- Reply‑To: `info.mutawamarine@mail.com` → **mismatch** with From domain
- Recipient: `webmaster@redacted.org`
- Subject: *“webmaster@redacted.org your: Transfer Reference Number:(09674321)”*
- Timestamp: **2020‑06‑10 05:58 UTC**
- Message‑ID: `<20200609225823.DFAEAAF31A6B7414@mutawamarine.com>`

### **Initial Red Flags**
- **SPF FAIL** — originating IP not authorized for mutawamarine.com  
- **DKIM NONE** — no cryptographic signature  
- **DMARC FAIL** — domain policy not satisfied  
- **Reply‑To domain mismatch** (mail.com vs mutawamarine.com)  
- **Originating IP is a VPS** (Hostwinds)  
- **Attachment masquerades as PDF** but is actually a CAB archive  
- **Financial lure** (“funds transferred via SWIFT”)  
- **HTML‑only body** with encoded characters  
- **No URLs** — attachment‑based malware delivery

### **Attachment Details**
- Filename: `SWT_#09674321____PDF__.CAB`
- File type: **CAB/RAR archive**
- Size: ~400 KB
- MD5: `f4dd3456cdb1976a145c1179a4d461ec`
- SHA‑1: `5a2bb8188377c15c036843b4a6ab9b0c0f2c1607`
- SHA‑256: `2e91c533615a9bb8929ac4bb76707b2444597ce063d84a4b33525e25074fff3f`
- Likely malware dropper disguised as a PDF receipt

### **Header Observations**
- Multiple `Received:` hops showing relay through Yahoo infrastructure
- Originating IP: **192.119.71.157**
- rDNS: `client-192-119-71-157.hostwindsdns.com` → VPS provider
- SPF evaluation explicitly states:  
  *“domain of mutawamarine.com does not designate x.x.x.x as permitted sender”*
- X‑Spam headers indicate:
  - HTML‑only message  
  - No HTML tag (common in poorly generated phishing emails)  
  - SpamAssassin flags financial lure patterns

### **Body Observations**
- HTML content with inline styling  
- Financial lure: claims of a SWIFT transfer  
- Mentions an attached “receipt of payment”  
- Transaction details fabricated (reference number, amount, date/time)  
- Social engineering tone: urgency + legitimacy  
- No URLs → attacker relies entirely on the attachment

### **Threat Indicators (Raw)**
- IP: `192.119.71.157`
- Domains:  
  - `mutawamarine.com` (spoofed)  
  - `mail.com` (Reply‑To domain)
- Attachment hash: `2e91c533615a9bb8929ac4bb76707b2444597ce063d84a4b33525e25074fff3f`
- File type: CAB archive disguised as PDF

### **Questions to Investigate**
- What malware family is associated with the SHA‑256 hash?
- Does the Hostwinds IP appear in threat feeds or blacklists?
- Is mutawamarine.com a legitimate business (likely yes)?
- Has this lure been used in other campaigns (SWIFT transfer theme)?
- Does the malware contact external C2 infrastructure?
- Does the malware drop additional payloads?

### **Next Steps**
- Submit SHA‑256 hash to **VirusTotal**
- Submit SHA‑256 hash to **Hybrid Analysis**
- Run IP/domain through **MXToolbox**
- Build **IOC table** (Processing stage)
- Begin **MITRE ATT&CK mapping**
- Build **Diamond Model**
- Draft **infrastructure analysis** and **malware analysis**

