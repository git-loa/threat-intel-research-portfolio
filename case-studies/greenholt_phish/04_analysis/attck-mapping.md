
# **MITRE ATT&CK Mapping**

This section maps the observed behaviors of the phishing email and associated malware to the MITRE ATT&CK framework.  
Mappings are based on:

- Email header analysis  
- Infrastructure analysis  
- VirusTotal relations  
- Hybrid Analysis behavioral indicators  
- Malware classification (Trojan Downloader)

---

# **1. Initial Access**

### **T1566.001 — Phishing: Spearphishing Attachment**  
The attacker delivered a malicious RAR archive disguised as a PDF receipt (`SWT_#09674321____PDF__.CAB`).  
The user is expected to open the attachment to trigger execution.

---

# **2. Execution**

### **T1204.002 — User Execution: Malicious File**  
Execution requires the victim to open the disguised “PDF” file, which actually contains a .NET executable.

### **T1059 — Command Execution (via child processes)**  
Hybrid Analysis observed multi‑process behavior and child process creation.

---

# **3. Defense Evasion**

### **T1036 — Masquerading**  
The malware uses misleading filenames such as:

- `aaa.pdf`  
- `SWT_#09674321__PDF.com`  

This disguises the executable as a document.

### **T1027 — Obfuscated/Encrypted Files**  
The payload is delivered inside a **RAR archive**, a common evasion technique to bypass email filters.

### **T1562 — Impair Defenses (Indirect)**  
The email bypassed authentication controls by spoofing a legitimate domain and failing SPF/DKIM/DMARC.

---

# **4. Persistence**  
*(Not observed — no persistence mechanisms reported by sandbox.)*

---

# **5. Privilege Escalation**  
*(Not observed.)*

---

# **6. Credential Access**  
*(Not directly observed, but common in downloader follow‑on payloads. Not mapped here.)*

---

# **7. Discovery**  
*(Not observed.)*

---

# **8. Lateral Movement**  
*(Not observed.)*

---

# **9. Collection**  
*(Not observed.)*

---

# **10. Command and Control (C2)**

### **T1071.001 — Application Layer Protocol: Web Protocols**  
Hybrid Analysis observed outbound network traffic, including SSL.

### **T1090 — Proxy / TOR**  
Hybrid Analysis performed TOR analysis, indicating possible anonymized outbound communication.

---

# **11. Impact**  
*(Not observed — downloader stage only.)*

---

# **ATT&CK Mapping Summary Table**

| Tactic | Technique | ID | Evidence |
|--------|-----------|----|----------|
| Initial Access | Spearphishing Attachment | T1566.001 | Malicious RAR disguised as PDF |
| Execution | User Execution | T1204.002 | Victim must open attachment |
| Execution | Command Execution | T1059 | Multi‑process behavior |
| Defense Evasion | Masquerading | T1036 | `.com` file named like a PDF |
| Defense Evasion | Obfuscated/Encrypted Files | T1027 | Payload inside RAR archive |
| Defense Evasion | Impair Defenses | T1562 | SPF/DKIM/DMARC failures |
| C2 | Web Protocols | T1071.001 | SSL traffic observed |
| C2 | Proxy / TOR | T1090 | TOR‑related analysis |

