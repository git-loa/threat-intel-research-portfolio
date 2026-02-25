
# **CTI Lab Capabilities**
*A self‑hosted Elastic Stack environment for professional Cyber Threat Intelligence development.*

This document describes the capabilities of the CTI lab environment used to support case studies, threat hunting exercises, structured analysis, and hybrid OSINT + telemetry investigations. The lab is designed to simulate realistic enterprise telemetry and enable safe, ethical, and repeatable CTI workflows.

---

# **1. Lab Architecture Overview**

The lab consists of:

- **Elastic Stack (self‑hosted on Ubuntu VM)**  
  - Elasticsearch  
  - Kibana  
  - Fleet Manager  

- **Ubuntu Endpoint with Elastic Agent**  
  - System module  
  - Endpoint Security module  
  - Network, process, file, and DNS telemetry  

This setup provides a controlled environment for generating, collecting, and analyzing endpoint activity without relying on real-world corporate data.

---

# **2. Telemetry Sources**

The Elastic Agent provides rich, structured telemetry across:

### **Process Events**
- Process start/stop  
- Parent-child relationships  
- Command-line arguments  
- Script interpreter usage  

### **Network Events**
- Outbound connections  
- DNS lookups  
- HTTP requests  
- Rare domain activity  

### **File Events**
- File creation  
- File modification  
- File deletion  

### **User & Authentication Events**
- SSH logins  
- Privilege escalation attempts  
- User creation and management  

### **Security Events**
- Elastic detection rule hits  
- Endpoint Security alerts  
- Behavioral detections mapped to MITRE ATT&CK  

This telemetry enables realistic CTI workflows, threat hunting, and incident reconstruction.

---

# **3. CTI Workflows Supported by the Lab**

The lab enables the following professional CTI workflows:

---

## **A. Threat Hunting**
- Hypothesis-driven hunts  
- Query development in Kibana Discover  
- ATT&CK‑aligned behavior analysis  
- Hunt documentation and reporting  

**Skills supported:**  
Threat Hunting Support, Internal Telemetry Use, Data Quality Evaluation

---

## **B. Incident Simulation & Reconstruction**
- Simulated phishing execution chains  
- Suspicious process behavior  
- Network anomalies  
- Timeline reconstruction using Kibana Timeline  

**Skills supported:**  
Incident Response Support, Flash Briefs, RFIs, Intelligence Estimates

---

## **C. Detection Rule Testing**
- Triggering benign alerts  
- Reviewing detection logic  
- Mapping alerts to ATT&CK  
- Writing tuning recommendations  

**Skills supported:**  
Detection Engineering Awareness, ATT&CK Mapping, Structured Analysis

---

## **D. Hybrid OSINT + Telemetry Case Studies**
- Combine public CVE/IOCs with internal telemetry  
- Validate behaviors in a controlled environment  
- Produce full lifecycle CTI reports  

**Skills supported:**  
Intelligence Cycle, Infrastructure Analysis, Reporting & Dissemination

---

## **E. Structured Analytic Techniques (SATs)**
- Apply ACH, 5W2H, Key Assumptions Check  
- Use telemetry to validate or refute hypotheses  

**Skills supported:**  
SATs, Bias Mitigation, Intelligence Estimates

---

# **4. Safe Simulation Capabilities**

The lab supports safe, controlled simulations such as:

- benign process execution  
- network activity  
- file creation/modification  
- privilege escalation attempts  
- SSH activity  
- phishing-like user behavior  
- detection rule triggering  

These simulations generate realistic telemetry without using malware or violating ethical boundaries.

---

# **5. Case Study Integration**

The lab is fully integrated into the case study workflow:

- **Direction:** Define intelligence requirements  
- **Collection:** OSINT + Elastic telemetry  
- **Processing:** Log filtering, normalization, timeline building  
- **Analysis:** ATT&CK mapping, SATs, infrastructure analysis  
- **Dissemination:** Flash briefs, RFIs, intelligence reports  

This enables professional‑grade CTI investigations that combine external threat intelligence with internal telemetry.

---

# **6. Ethical and Legal Boundaries**

The lab is designed to ensure:

- No real-world corporate data is used  
- No malware is executed  
- All activity is contained within your own systems  
- All simulations are benign and controlled  
- All analysis is based on synthetic or publicly available data  

This ensures compliance with legal, ethical, and professional standards.

---

# **7. Future Enhancements**

Planned expansions include:

- Windows endpoint with Elastic Agent  
- Additional detection rules  
- Custom dashboards for CTI metrics  
- APT emulation using benign tools  
- Integration with Sigma rules or Atomic Red Team (safe tests only)  

---

# **Summary**

This CTI lab provides a safe, realistic, and professional environment for developing:

- threat hunting skills  
- incident reconstruction  
- structured analysis  
- ATT&CK mapping  
- hybrid OSINT + telemetry case studies  
- CTI reporting and dissemination  
- program-level CTI capabilities  

It forms the backbone of your practical CTI development and supports the full CTI skills matrix.
