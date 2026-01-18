
# **Cyber Kill Chain — Learning Scenario**  
*A practical introduction for CTI research*

The **Cyber Kill Chain** (developed by Lockheed Martin) describes the stages of an attack from the attacker’s perspective.  
It helps CTI analysts understand:

- how an attack unfolds  
- where defenders can detect or disrupt it  
- which stages succeeded or failed  
- what improvements are needed  

The Kill Chain is especially useful for **phishing, malware delivery, and exploitation scenarios**.

---

# **The Seven Kill Chain Stages**

1. **Reconnaissance**  
2. **Weaponization**  
3. **Delivery**  
4. **Exploitation**  
5. **Installation**  
6. **Command & Control (C2)**  
7. **Actions on Objectives**

---

# **Scenario: Malicious PDF Sent to HR Staff**

A university HR employee receives an email with a PDF attachment titled:  
**“Updated 2025 Payroll Schedule.pdf”**

The PDF contains a malicious macro that downloads a credential‑stealing payload.

Let’s walk through the Kill Chain.

---

# **1. Reconnaissance**  
The attacker gathers information about the university:

- HR staff names from LinkedIn  
- Email formats from public pages  
- Payroll schedule patterns from past documents  

**Goal:** Identify who to target and how to craft a believable lure.

---

# **2. Weaponization**  
The attacker prepares the malicious payload:

- Creates a PDF with embedded macro code  
- Configures the macro to download a credential‑stealing script  
- Tests the payload in a sandbox to ensure it bypasses detection  

**Goal:** Build a weapon that looks harmless but executes malicious code.

---

# **3. Delivery**  
The attacker sends the email:

- Spoofed “Payroll Department” sender  
- Subject: “Updated Payroll Schedule 2025”  
- Attachment: malicious PDF  

**Goal:** Get the victim to open the file.

---

# **4. Exploitation**  
The victim opens the PDF and enables macros.

The macro executes and:

- downloads a malicious script  
- runs it silently  

**Goal:** Exploit user trust to run attacker code.

---

# **5. Installation**  
The downloaded script:

- installs a credential‑stealing payload  
- adds persistence via a scheduled task  
- hides itself in a system directory  

**Goal:** Establish a foothold on the system.

---

# **6. Command & Control (C2)**  
The malware connects to the attacker’s server:

- sends stolen credentials  
- waits for further commands  
- uses HTTPS to blend in with normal traffic  

**Goal:** Maintain communication with the attacker.

---

# **7. Actions on Objectives**  
The attacker uses the stolen credentials to:

- access HR systems  
- attempt payroll data extraction  
- search for sensitive employee information  

**Goal:** Achieve the final objective — data theft.

---

# **Kill Chain Summary Table**

| Stage | What Happened | Detection Opportunities |
|-------|----------------|-------------------------|
| Recon | Attacker profiles HR staff | Monitor OSINT exposure |
| Weaponization | Malicious PDF created | Sandbox analysis |
| Delivery | Email sent with attachment | Email filtering, SPF/DKIM |
| Exploitation | Macro executed | Macro blocking, EDR alerts |
| Installation | Payload installed | File integrity monitoring |
| C2 | Malware connects to server | Network anomaly detection |
| Actions | Data theft attempted | IAM logs, unusual access |

---

# **How a CTI Analyst Uses the Kill Chain**

### **1. Identify detection gaps**  
Example:  
- No alert triggered when macro executed  
- No block on outbound traffic to suspicious IP  
- No monitoring of scheduled tasks

### **2. Recommend improvements**  
- Disable macros by default  
- Strengthen email filtering  
- Add EDR rules for suspicious PDF behavior  
- Monitor outbound connections to new domains

### **3. Communicate clearly with SOC and IR teams**  
The Kill Chain gives a shared language for describing:

- what happened  
- where defenses failed  
- where improvements are needed  

### **4. Support threat hunting**  
Hunters can search for:

- similar malicious PDFs  
- macro execution logs  
- connections to the same C2 server  

---

# **Why This Scenario Matters**

This is a classic real‑world attack path.  
By mapping it to the Kill Chain, you learn:

- how attackers think  
- how defenders can break the chain  
- how to structure analysis in a professional way  
- how to identify detection and response gaps  

This is exactly how CTI analysts support SOC and IR teams.

