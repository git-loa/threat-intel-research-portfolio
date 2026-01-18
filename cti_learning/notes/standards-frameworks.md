
# **Standards and Frameworks (CTI Research Notes)**  
*A focused, detailed overview for hands‑on threat intelligence work*

---

## **Standards**  
Standards define **formats, identifiers, scoring systems, and sharing rules**.  
They ensure CTI data is consistent, structured, and interoperable.

### **1. CVE (Common Vulnerabilities and Exposures)**  
A global standard for naming vulnerabilities.  
- Each vulnerability gets a unique ID (e.g., CVE‑2025‑14847).  
- Used across all CTI reports, scanners, and databases.  
- Helps you reference vulnerabilities unambiguously.

### **2. CVSS (Common Vulnerability Scoring System)**  
A standard method for scoring vulnerability severity (0–10).  
- Base score reflects exploitability + impact.  
- Helps prioritize vulnerabilities.  
- Used in NVD, vendor advisories, and CTI reports.

### **3. NVD (National Vulnerability Database)**  
A standardized database that follows CVE/CVSS formats.  
- Provides detailed vulnerability info.  
- Includes severity, impact metrics, references, and patches.  
- Essential for vulnerability‑focused investigations like MongoBleed.

### **4. STIX (Structured Threat Information Expression)**  
A standardized format for representing threat intelligence.  
- Defines how to structure IOCs, TTPs, threat actors, campaigns.  
- Used by enterprise TI platforms (MISP, OpenCTI, Anomali).  
- Helps automate TI sharing.

### **5. TAXII (Trusted Automated Exchange of Intelligence Information)**  
A standard protocol for transporting STIX data.  
- Enables automated TI sharing between systems.  
- Often used by ISACs, CERTs, and enterprise SOCs.

### **6. TLP (Traffic Light Protocol)**  
A standard for controlling how intelligence is shared.  
- **CLEAR** — public  
- **GREEN** — internal community  
- **AMBER** — organization only  
- **RED** — named individuals only  
Used in every professional CTI report to prevent oversharing.

### **7. ISO/IEC 27001 & 27035**  
International security standards.  
- **27001:** Information Security Management System (ISMS).  
- **27035:** Incident response guidelines.  
Useful for understanding how CTI supports risk and incident management.

---

## **Frameworks**  
Frameworks provide **models, structures, and conceptual guides** for understanding threats and organizing CTI work.

### **1. MITRE ATT&CK**  
A comprehensive framework of attacker tactics and techniques.  
- Organized into Tactics (goals) and Techniques (how goals are achieved).  
- Used to map attacker behavior in investigations.  
- Industry standard for detection engineering and CTI reporting.

### **2. Cyber Kill Chain (Lockheed Martin)**  
A linear model describing the stages of an attack:  
Recon → Weaponization → Delivery → Exploitation → Installation → C2 → Actions on Objectives  
- Helps identify where an attack can be detected or disrupted.  
- Useful for structuring phishing or malware investigations.

### **3. Diamond Model of Intrusion Analysis**  
A framework that analyzes intrusions using four elements:  
**Adversary – Infrastructure – Capability – Victim**  
- Helps analysts pivot between indicators.  
- Useful for infrastructure‑focused investigations (domains, IPs, hosting).

### **4. CTI Lifecycle (Intelligence Cycle)**  
The workflow for producing intelligence:  
Direction → Collection → Processing → Analysis → Dissemination → Feedback  
- Ensures investigations are structured and repeatable.  
- You already use this in your case studies.

### **5. NIST Cybersecurity Framework (CSF)**  
A high‑level framework for managing cybersecurity risk.  
Functions: Identify, Protect, Detect, Respond, Recover  
- CTI supports Detect and Respond.  
- Helps you understand where your investigations fit in the bigger picture.

### **6. NIST SP 800‑61 (Incident Handling Framework)**  
Defines the phases of incident response.  
- Preparation  
- Detection & Analysis  
- Containment, Eradication, Recovery  
- Post‑Incident Activity  
Useful for understanding how CTI feeds into IR workflows.

---

# **Quick Summary Table**

| Item | Type | Why It Matters |
|------|------|----------------|
| CVE | Standard | Identifying vulnerabilities |
| CVSS | Standard | Scoring severity |
| NVD | Standard | Vulnerability details |
| STIX | Standard | Structured TI format |
| TAXII | Standard | Sharing TI |
| TLP | Standard | Sharing intelligence safely |
| ISO 27001/27035 | Standard | Security + IR context |
| MITRE ATT&CK | Framework | Mapping attacker behavior |
| Cyber Kill Chain | Framework | Understanding attack stages |
| Diamond Model | Framework | Pivoting + infrastructure analysis |
| CTI Lifecycle | Framework | Structuring investigations |
| NIST CSF | Framework | Big‑picture risk context |
| NIST 800‑61 | Framework | Incident response phases |
