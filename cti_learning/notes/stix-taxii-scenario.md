
# **STIX & TAXII — Learning Scenario**  
*A practical introduction for CTI research*

STIX and TAXII are **standards** used to structure and share threat intelligence.

- **STIX (Structured Threat Information Expression)**  
  A standardized *format* for representing threat intelligence (IOCs, TTPs, threat actors, campaigns, relationships).

- **TAXII (Trusted Automated Exchange of Intelligence Information)**  
  A standardized *protocol* for transporting STIX data between systems.

Together, they allow CTI teams to share intelligence in a consistent, machine‑readable way.

---

# **Why STIX/TAXII Matter in CTI**

- Enable automated sharing of indicators  
- Ensure consistent structure across organizations  
- Reduce manual work for SOC and TI teams  
- Support interoperability between platforms (MISP, OpenCTI, Anomali, etc.)  
- Allow CTI analysts to express relationships between indicators, TTPs, and threat actors  

Even if you don’t use them daily, understanding them is essential for professional CTI work.

---

# **Scenario: Sharing Indicators From a Credential‑Harvesting Phishing Campaign**

A university CTI analyst investigates a phishing campaign targeting students.  
The attacker uses a fake login page hosted on:

```
student‑aid‑portal[.]info
```

The analyst identifies:

- malicious domain  
- hosting IP  
- phishing URL  
- attacker infrastructure  
- MITRE ATT&CK techniques  

Now the analyst needs to **share these indicators** with:

- the university SOC  
- partner institutions  
- an ISAC (Information Sharing and Analysis Center)

STIX/TAXII is the standard way to do this.

---

# **Step 1 — Represent the Intelligence in STIX**

Below is a simplified, human‑readable version of what a STIX object *conceptually* looks like.  
(This is NOT real JSON — just a learning‑friendly representation.)

### **STIX Object: Indicator (Domain)**

```
Indicator:
  Type: domain-name
  Value: student-aid-portal[.]info
  Description: Domain used in credential-harvesting phishing campaign
  First Seen: 2025-01-12
  Confidence: High
  Related Technique: T1566.002 (Spearphishing Link)
```

### **STIX Object: Infrastructure**

```
Infrastructure:
  Type: hosting-server
  IP: 185.199.110.45
  Provider: Abuse-heavy VPS
  Related Domains: student-aid-portal[.]info, aid-login-secure[.]net
```

### **STIX Object: Attack Pattern (MITRE ATT&CK)**

```
Attack Pattern:
  Technique: T1056.003
  Name: Web Portal Credential Harvesting
```

### **STIX Relationship Objects**

```
Relationship:
  Indicator → Infrastructure
  Infrastructure → Attack Pattern
  Indicator → Campaign
```

This is the power of STIX:  
It doesn’t just store indicators — it stores **relationships**.

---

# **Step 2 — Share the Intelligence Using TAXII**

TAXII is the protocol used to deliver STIX objects.

In practice:

- The analyst pushes the STIX bundle to a TAXII server  
- Partner organizations pull the data automatically  
- SOC tools ingest the indicators into blocklists or detection rules  

This enables **automated, structured, real‑time sharing**.

---

# **How a CTI Analyst Uses STIX/TAXII**

### **1. Share IOCs with SOC teams**
SOC tools can automatically ingest:

- domains  
- IPs  
- URLs  
- hashes  

### **2. Share intelligence with partner institutions**
Universities often share threat intelligence through ISACs.

### **3. Maintain structured intelligence repositories**
Platforms like MISP or OpenCTI use STIX internally.

### **4. Build relationships between indicators**
STIX allows you to express:

- “This domain belongs to this infrastructure”  
- “This infrastructure is used in this campaign”  
- “This campaign uses these ATT&CK techniques”  

### **5. Automate detection and blocking**
TAXII feeds can automatically update:

- firewalls  
- SIEM rules  
- EDR blocklists  
- email filters  

---

# **Why This Scenario Matters**

This scenario teaches you:

- how STIX structures threat intelligence  
- how TAXII transports it  
- how CTI analysts share indicators professionally  
- how relationships between indicators are represented  
- how intelligence moves from analysis → automation  
