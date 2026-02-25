
# **Hybrid CTI Case Study Template (OSINT + Elastic Telemetry)**  
*A structured template for professional CTI investigations combining external intelligence with internal telemetry.*

---

# **01_direction.md — Direction**

## **1. Intelligence Requirements (IRs / PIRs)**  
- What decision or question is this case study meant to answer?  
- Which stakeholders benefit from this analysis?  
- What intelligence gaps are we trying to close?  

**Examples:**  
- Determine whether CVE‑XXXX‑YYYY poses a realistic threat to our environment.  
- Identify attacker behaviors associated with this vulnerability.  
- Assess whether similar activity appears in internal telemetry.  

---

## **2. Scope**  
- Vulnerability or threat being analyzed  
- Time window  
- Systems or environments included  
- OSINT + internal telemetry boundaries  

---

## **3. Key Questions**  
- What is the vulnerability or threat?  
- How is it exploited?  
- What behaviors should we expect to see?  
- Do we observe any related activity in our telemetry?  

---

## **4. Expected Outputs**  
- OSINT summary  
- Telemetry findings  
- ATT&CK mapping  
- Indicators  
- Recommendations  
- Intelligence estimate  

---

# **02_collection.md — Collection**

## **1. OSINT Collection**  
Document all external sources used:

- CVE databases  
- Vendor advisories  
- Threat reports  
- Public scanning data  
- Malware sandboxes (if applicable)  
- WHOIS / DNS / URLScan / VirusTotal  

**Collected OSINT:**  
- Vulnerability details  
- Exploitation methods  
- Indicators (domains, IPs, hashes)  
- Threat actor associations (if any)  

---

## **2. Internal Telemetry Collection (Elastic Stack)**  
Document the data sources used:

### **Elastic Data Sources**
- Process events  
- Network events  
- DNS logs  
- File events  
- Authentication logs  
- Detection rule hits  
- Timeline artifacts  

### **Collection Queries**  
Include the Kibana queries used to gather data.

Example:
```
process.name : "curl" AND process.args : "example.com"
```

### **Time Range**  
Specify the window of telemetry examined.

---

# **03_processing.md — Processing**

## **1. OSINT Processing**
- Normalize indicators  
- Extract relevant fields  
- Remove noise  
- Build an indicator table  

## **2. Telemetry Processing**
- Filter out benign baseline activity  
- Normalize process names, paths, and command lines  
- Build a timeline of events  
- Correlate OSINT indicators with internal logs  

## **3. Data Transformation**
- Convert logs into structured tables  
- Extract parent-child process chains  
- Identify rare or anomalous events  

---

# **04_analysis.md — Analysis**

## **1. Threat Overview**
- Summary of the vulnerability or threat  
- Exploitation mechanics  
- Known threat actors (if applicable)  

---

## **2. Structured Analytic Techniques (SATs)**  
Apply at least one SAT:

### **Key Assumptions Check**  
List assumptions and validate them using telemetry.

### **5W2H**  
Who, What, When, Where, Why, How, How Much.

### **ACH (optional)**  
If multiple hypotheses exist.

---

## **3. ATT&CK Mapping**
Map both OSINT and telemetry behaviors:

| Stage | Technique | Evidence |
|-------|-----------|----------|
| Initial Access | T1190 | OSINT: exploitation of vulnerable service |
| Execution | T1059 | Telemetry: suspicious script execution |
| C2 | T1071 | Telemetry: outbound HTTP requests |

---

## **4. Telemetry Findings**

### **Process Analysis**
- Suspicious parent-child chains  
- Script interpreter usage  
- Unusual command-line arguments  

### **Network Analysis**
- Rare outbound connections  
- DNS lookups to unusual domains  
- HTTP requests matching OSINT indicators  

### **File Analysis**
- Unexpected file creation  
- Modified configuration files  

### **Authentication Analysis**
- Privilege escalation attempts  
- SSH activity  

---

## **5. Correlation (OSINT + Telemetry)**  
- Do internal logs match OSINT indicators?  
- Do behaviors align with known exploitation patterns?  
- Are there anomalies worth deeper investigation?  

---

# **05_dissemination.md — Dissemination**

## **1. Executive Summary**  
A clear, non-technical overview of:

- What happened  
- Why it matters  
- What should be done next  

---

## **2. Technical Findings**  
Summaries of:

- OSINT findings  
- Telemetry findings  
- ATT&CK mapping  
- Indicators  

---

## **3. Indicators of Compromise (IOCs)**  
Tables for:

- Domains  
- IPs  
- Hashes  
- Filenames  
- Process patterns  

---

## **4. Recommendations**  
- Detection improvements  
- Hardening steps  
- Monitoring guidance  
- Patch or mitigation actions  

---

## **5. Intelligence Estimate**  
Use calibrated language:

- *Almost certain*  
- *Likely*  
- *Possible*  
- *Unlikely*  

Example:

> It is **likely** that exploitation attempts will increase over the next 30 days as proof‑of‑concept code becomes more widely available.

---

## **6. Appendices**  
- Raw logs (sanitized)  
- Kibana queries  
- Timeline screenshots  
- OSINT references  

---

# **Usage Notes**

This template is designed for:

- vulnerability case studies  
- phishing investigations  
- infrastructure analysis  
- hybrid OSINT + telemetry investigations  
- threat hunting reports  
- simulated incident writeups  

It aligns with:

- the CTI Intelligence Cycle  
- MITRE ATT&CK  
- Structured Analytic Techniques  
- professional CTI reporting standards  
