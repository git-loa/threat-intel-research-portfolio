
# **MITRE ATT&CK — Learning Scenario**  
*A practical introduction for CTI research*

MITRE ATT&CK is a globally recognized framework that describes **how adversaries behave**.  
It organizes attacker actions into:

- **Tactics** → *the attacker’s goal*  
- **Techniques** → *how they achieve that goal*  
- **Sub‑techniques** → *specific variations*  

CTI analysts use ATT&CK to describe behavior clearly, consistently, and in a way that supports detection and hunting.

---

# **Why MITRE ATT&CK Matters in CTI**

- Gives a **common language** for describing attacks  
- Helps analysts move beyond raw indicators  
- Supports detection engineering  
- Helps identify gaps in defensive coverage  
- Makes reports more professional and structured  

---

# **Scenario: Phishing Email Leading to Credential Harvesting**

A university SOC receives reports of suspicious emails claiming to be from the IT department.  
The email urges users to “update their password immediately” and includes a link to a fake login page.

As a CTI analyst, you analyze the behavior using MITRE ATT&CK.

---

# **Step‑by‑Step ATT&CK Mapping**

## **1. Initial Access**  
The attacker sends a phishing email with a malicious link.

- **Tactic:** Initial Access  
- **Technique:** **T1566.002 — Phishing: Spearphishing Link**  
  The attacker uses a crafted email to lure victims into clicking a link.

---

## **2. Execution (User Interaction)**  
The victim clicks the link and loads the fake login page.

- **Tactic:** Execution  
- **Technique:** **T1204.001 — User Execution: Malicious Link**  
  The attack relies on the user performing an action.

---

## **3. Credential Access**  
The fake login page captures the victim’s username and password.

- **Tactic:** Credential Access  
- **Technique:** **T1056.003 — Input Capture: Web Portal Credential Harvesting**  
  The attacker collects credentials through a spoofed authentication page.

---

## **4. Collection & Exfiltration**  
The stolen credentials are sent to the attacker’s server.

- **Tactic:** Exfiltration  
- **Technique:** **T1041 — Exfiltration Over C2 Channel**  
  Credentials are transmitted to attacker‑controlled infrastructure.

---

# **ATT&CK Summary Table**

| Stage | Tactic | Technique |
|-------|--------|-----------|
| Email sent | Initial Access | T1566.002 — Spearphishing Link |
| User clicks | Execution | T1204.001 — User Execution (Link) |
| Fake login | Credential Access | T1056.003 — Web Credential Harvesting |
| Credentials sent | Exfiltration | T1041 — Exfiltration Over C2 |

---

# **How a CTI Analyst Uses This**

### **1. Reporting**  
You describe the attack using ATT&CK techniques instead of vague language.

### **2. Detection Engineering**  
SOC engineers can build or tune detections for:

- suspicious login pages  
- newly registered domains  
- credential harvesting patterns  
- phishing emails with similar lures  

### **3. Threat Hunting**  
Hunters can search for:

- traffic to the attacker’s domain  
- repeated login failures  
- unusual authentication attempts  

### **4. Defensive Gaps**  
ATT&CK helps identify missing controls:

- no detection for newly registered domains  
- no alerting on credential harvesting patterns  
- no phishing simulation training  

---

# **Why This Scenario Matters**

This is one of the most common real‑world attacks.  
By mapping it to ATT&CK, you learn:

- how to describe attacker behavior precisely  
- how to think like a CTI analyst  
- how to support SOC, IR, and detection teams  
- how to write professional‑grade reports  
