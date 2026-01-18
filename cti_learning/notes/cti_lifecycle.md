
# **The Cyber Threat Intelligence (CTI) Lifecycle**  

The Cyber Threat Intelligence (CTI) lifecycle is a structured process used to collect, analyze, and deliver intelligence that helps organizations understand and respond to threats.  
It ensures that intelligence is **purposeful**, **repeatable**, and **actionable**.

The lifecycle has six phases:

1. **Direction**  
2. **Collection**  
3. **Processing**  
4. **Analysis**  
5. **Dissemination**  
6. **Feedback**

Below is a clear explanation of each phase, followed by a realistic scenario showing how the lifecycle works — **with Traffic Light Protocol (TLP) applied at each step**.

---

# **1. Direction**  
This phase defines **what questions need to be answered**.

Examples:

- Are we being targeted by phishing campaigns  
- What vulnerabilities are most likely to be exploited  
- Which assets are most critical to protect  

**TLP Classification:**  
- **TLP:AMBER** — Direction often contains internal priorities, risks, and strategic concerns that should not be shared outside the organization.

---

# **2. Collection**  
Gathering raw data from multiple sources:

- WHOIS  
- DNS  
- URLScan  
- VirusTotal  
- Shodan  
- Email headers  
- Logs  
- Threat feeds  

**TLP Classification:**  
- **TLP:AMBER** — Raw data may contain sensitive internal logs, user information, or email metadata.  
- External OSINT sources (WHOIS, DNS, URLScan) are inherently public, but once combined with internal data, the collection set becomes sensitive.

---

# **3. Processing**  
Transforming raw data into usable formats:

- Parsing WHOIS  
- Extracting URLs  
- Normalizing timestamps  
- De‑duplicating indicators  
- Converting JSON into tables  

**TLP Classification:**  
- **TLP:AMBER** — Processed data still contains internal indicators and should remain within the organization.

---

# **4. Analysis**  
Interpreting the processed data to answer the original questions:

- Identifying patterns  
- Mapping behavior to MITRE ATT&CK  
- Determining attacker intent  
- Assessing risk and impact  
- Pivoting to related infrastructure  

**TLP Classification:**  
- **TLP:AMBER** — Analysis often includes internal risk assessments and interpretations that should not be shared externally.

---

# **5. Dissemination**  
Sharing intelligence with the right audience in the right format:

- IOC list for SOC  
- Detailed report for security team  
- Briefing for leadership  
- Awareness message for users  

**TLP Classification:**  
- **TLP:GREEN** — When shared internally across departments.  
- **TLP:CLEAR** — If the organization chooses to publish a sanitized public advisory with no internal data.  
- **TLP:RED** — If the intelligence reveals an active compromise affecting critical systems.

---

# **6. Feedback**  
Stakeholders provide feedback:

- Was the intelligence useful  
- Did it answer the right questions  
- What should be investigated next  

**TLP Classification:**  
- **TLP:AMBER** — Feedback often contains internal operational details.

---

# **Scenario: Phishing Campaign Targeting a University (With TLP Applied)**

Let’s walk through a realistic scenario using the CTI lifecycle and apply TLP at each step.

---

## **1. Direction — TLP:AMBER**
The SOC receives reports of suspicious emails claiming to be from the registrar’s office.

Questions:

- Is this a targeted phishing campaign  
- What domains or infrastructure are involved  
- What is the attacker trying to achieve  

This contains internal concerns → **TLP:AMBER**.

---

## **2. Collection — TLP:AMBER**
The analyst gathers:

- The phishing email  
- The embedded URL  
- WHOIS data  
- DNS records  
- URLScan results  
- VirusTotal detections  
- Shodan data  
- Internal mail logs  

Internal logs + user reports → **TLP:AMBER**.

---

## **3. Processing — TLP:AMBER**
The analyst:

- Extracts the phishing URL  
- Parses WHOIS  
- Normalizes timestamps  
- De‑duplicates indicators  
- Converts URLScan JSON into a readable summary  

Still contains internal metadata → **TLP:AMBER**.

---

## **4. Analysis — TLP:AMBER**
The analyst discovers:

- Domain registered 24 hours ago  
- Hosted on an abuse‑heavy VPS  
- Page mimics university login  
- Credential‑harvesting script present  
- MITRE mapping:  
  - T1566.002 (Phishing: Spearphishing Link)  
  - T1056.003 (Credential Harvesting)  

Analysis includes internal risk assessment → **TLP:AMBER**.

---

## **5. Dissemination**
Different outputs have different TLP levels:

### **IOC list for SOC analysts**  
- **TLP:GREEN** (internal teams only)

### **Detailed technical report**  
- **TLP:AMBER** (security team only)

### **Awareness message to students**  
- **TLP:CLEAR** (public‑safe, no sensitive details)

### **If active compromise is confirmed**  
- **TLP:RED** (restricted to named individuals)

---

## **6. Feedback — TLP:AMBER**
SOC asks:

- Can we detect similar domains automatically  
- Should we block the hosting provider’s ASN  
- Can this be added to phishing training  

Operational feedback → **TLP:AMBER**.

---

# **Traffic Light Protocol (TLP) Summary**

| TLP Level | Meaning | Scenario Example |
|----------|---------|------------------|
| **TLP:CLEAR** | Publicly shareable | Student awareness email |
| **TLP:GREEN** | Share within organization | IOC list for SOC |
| **TLP:AMBER** | Internal only | Logs, analysis, direction |
| **TLP:RED** | Named individuals only | Active compromise details |
