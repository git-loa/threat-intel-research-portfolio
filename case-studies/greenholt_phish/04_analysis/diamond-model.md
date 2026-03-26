
# **Diamond Model of Intrusion Analysis**

The Diamond Model organizes the phishing incident into four interconnected components: **Adversary**, **Infrastructure**, **Capability**, and **Victim**.  
This model helps describe the intrusion at a strategic level without requiring attribution.

---

# **1. Adversary**

### **Characteristics**
- **Unknown threat actor**  
- Behavior consistent with **commodity cybercrime operators**  
- Uses **spoofed business identities** to increase credibility  
- Relies on **public email providers** (mail.com) for reply‑to redirection  
- Demonstrates **low operational sophistication** (simple spoofing, no DKIM, VPS‑based sending)

### **Intent**
- Deliver a **malicious downloader** to the victim  
- Likely objective:  
  - Initial access  
  - Follow‑on payload delivery (stealer, RAT, ransomware, etc.)

### **Evidence**
- Spoofed domain (`mutawamarine.com`)  
- Hostwinds VPS sending infrastructure  
- Commodity malware (Trojan Downloader)  
- Multi‑year reuse of the same malicious file family (VirusTotal relations)

---

# **2. Infrastructure**

### **Email Infrastructure**
- **Sending IP:** 192.119.71.157 (Hostwinds VPS)  
- **Reverse DNS:** `client-192-119-71-157.hostwindsdns.com`  
- **Mail routing:** Passed through Yahoo → Hostwinds → victim  
- **Reply‑To:** `mail.com` (public email provider)

### **Domain Infrastructure**
- **Spoofed domain:** mutawamarine.com  
- Legitimate domain uses **Microsoft 365**, but email did **not** originate from Microsoft  
- SPF/DKIM/DMARC **failed**  
- Nameservers: StableTransit (Rackspace)

### **Malware Infrastructure**
- Downloader exhibited:  
  - Outbound SSL traffic  
  - TOR‑related analysis  
  - Multi‑process behavior  
- VirusTotal graph shows:  
  - Related ZIP files  
  - Related phishing emails  
  - Consistent payload hash across years

### **Assessment**
Infrastructure is **disposable**, **low‑cost**, and **typical of commodity phishing campaigns**.

---

# **3. Capability**

### **Malware Capability**
- **Trojan Downloader** (Trojan.Downloader.dd)  
- Delivered inside a **RAR archive** disguised as a PDF  
- Extracted payload is a **.NET executable**  
- Behavior includes:  
  - Network communication  
  - SSL traffic  
  - Potential TOR usage  
  - Child process creation  
  - High threat score (100/100)

### **Delivery Capability**
- Email spoofing  
- Social engineering (fake receipt / shipping document)  
- Attachment masquerading (`.com` file named like a PDF)

### **Operational Capability**
- Ability to send phishing emails at scale  
- Ability to host malware on VPS infrastructure  
- Ability to bypass basic email filters using RAR archives

---

# **4. Victim**

### **Target Profile**
- Recipient of the phishing email (individual or organization)  
- Likely targeted for:  
  - Credential theft  
  - Malware infection  
  - Initial access for further compromise

### **Victim Requirements**
- Must open the attachment  
- Must execute the disguised file  
- Attack relies on **user interaction**, not vulnerabilities

### **Impact Potential**
- Host compromise  
- Secondary malware installation  
- Data theft  
- Remote access  
- Possible lateral movement (depending on downloaded payload)

---

# **Diamond Model Summary**

| Vertex | Summary |
|--------|---------|
| **Adversary** | Unknown cybercrime actor using spoofing + commodity malware |
| **Infrastructure** | Hostwinds VPS, spoofed domain, mail.com reply‑to, RAR archive delivery |
| **Capability** | Trojan Downloader, masquerading, outbound C2, multi‑process behavior |
| **Victim** | Email recipient targeted via phishing attachment |

