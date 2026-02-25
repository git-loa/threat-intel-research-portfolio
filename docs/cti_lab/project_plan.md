
# **CTI Project Plan**
*A structured development plan to fill all remaining gaps in the CTI Skills Matrix using OSINT, Elastic telemetry, and hybrid case studies.*

---

# **1. Purpose**

This project plan outlines a series of practical, portfolio‑ready CTI projects designed to close the remaining gaps in the CTI Skills Matrix. Each project produces a tangible artifact (case study, hunt report, brief, estimate, etc.) and aligns with real-world CTI workflows.

The plan is divided into five categories:

1. **Intelligence Tradecraft**  
2. **Threat Actor & Campaign Analysis**  
3. **Collection & Data Handling**  
4. **Reporting & Communication**  
5. **Program Development & Metrics**

Each project is designed to be achievable within your Elastic Stack lab and OSINT environment.

---

# **2. Intelligence Tradecraft Projects**

## **2.1 Structured Analytic Techniques (SATs) Pack**
**Goal:** Demonstrate ACH, Key Assumptions Check, and 5W2H in real investigations.  
**Output:** `cti_learning/sats/` folder with 3 SAT examples.

### Tasks:
- Apply **Key Assumptions Check** to a CVE case study  
- Apply **5W2H** to a phishing investigation  
- Apply **ACH** to competing hypotheses about a threat  

---

## **2.2 Flash Briefs Collection**
**Goal:** Build rapid-response intelligence communication skills.  
**Output:** `flash_briefs/` folder with 3 briefs.

### Tasks:
- Trigger a benign Elastic detection  
- Write a 1-page Flash Brief  
- Include ATT&CK mapping + recommended actions  

---

## **2.3 RFI Response Pack**
**Goal:** Practice targeted intelligence responses.  
**Output:** `rfi_responses/` folder with 3 RFIs.

### Tasks:
- Create simulated RFIs (e.g., “Has this host contacted suspicious domains”)  
- Answer using Elastic telemetry + OSINT  

---

## **2.4 Intelligence Estimates**
**Goal:** Practice calibrated warning language and forecasting.  
**Output:** `estimates/` folder with 2 estimates.

### Tasks:
- Write a short-term (48h) estimate  
- Write a long-term (30-day) estimate  
- Use “likely”, “almost certain”, “possible”, etc.  

---

# **3. Threat Actor & Campaign Analysis Projects**

## **3.1 APT Profile (OSINT‑Only)**
**Goal:** Build an APT profile using public sources.  
**Output:** `apt_profiles/<apt_name>.md`

### Tasks:
- Select one APT (e.g., APT29, MuddyWater)  
- Document TTPs, infrastructure, targeting, and campaigns  
- Map to ATT&CK  

---

## **3.2 Infrastructure Analysis Case Study**
**Goal:** Demonstrate pivoting across domains, IPs, ASNs.  
**Output:** `case-studies/<infra-case>/`

### Tasks:
- Pick a suspicious domain or IP  
- Pivot using WHOIS, DNS, URLScan, VT  
- Build an infrastructure map  

---

## **3.3 Hybrid CVE Case Study (OSINT + Telemetry)**
**Goal:** Combine external threat intelligence with internal telemetry.  
**Output:** `case-studies/<cve>/` using the telemetry template.

### Tasks:
- Choose a trending CVE  
- Simulate benign activity related to it  
- Analyze telemetry + OSINT  
- Produce full lifecycle report  

---

# **4. Collection & Data Handling Projects**

## **4.1 Threat Hunt Pack**
**Goal:** Build 3–5 structured hunts using Elastic.  
**Output:** `hunts/` folder.

### Tasks:
- Write hypotheses  
- Run Kibana queries  
- Document findings  
- Map to ATT&CK  

---

## **4.2 Telemetry Quality Assessment**
**Goal:** Evaluate completeness, accuracy, and noise.  
**Output:** `cti_learning/data_quality.md`

### Tasks:
- Review process, network, DNS logs  
- Identify gaps  
- Recommend improvements  

---

## **4.3 Automation Review**
**Goal:** Validate your own enrichment scripts.  
**Output:** `tools/automation_review.md`

### Tasks:
- Review domain_enrich.py  
- Document limitations  
- Suggest improvements  

---

# **5. Reporting & Communication Projects**

## **5.1 Executive Summary Pack**
**Goal:** Practice high-level communication.  
**Output:** `executive_summaries/` folder.

### Tasks:
- Write 3 executive summaries (phishing, CVE, hunt)  
- Keep each under 200 words  

---

## **5.2 Technical Brief Pack**
**Goal:** Communicate findings to IR/hunters.  
**Output:** `technical_briefs/` folder.

### Tasks:
- Write 2 technical briefs  
- Include ATT&CK, logs, queries, and recommendations  

---

## **5.3 Visualizations Pack**
**Goal:** Build CTI visualizations using Kibana Lens.  
**Output:** `visuals/` folder with exported PNGs.

### Tasks:
- Create a timeline  
- Create a process tree  
- Create a network flow chart  

---

# **6. Program Development & Metrics Projects**

## **6.1 PIR/IR Document**
**Goal:** Demonstrate requirements management.  
**Output:** `program/pirs.md`

### Tasks:
- Write 3–5 Priority Intelligence Requirements  
- Write supporting Intelligence Requirements  

---

## **6.2 CTI Metrics Dashboard**
**Goal:** Show program-level thinking.  
**Output:** `program/metrics.md`

### Tasks:
- Define metrics for:  
  - hunts  
  - case studies  
  - detections  
  - coverage  
- Build a simple dashboard in Kibana  

---

## **6.3 Stakeholder Alignment Summary**
**Goal:** Show communication with leadership.  
**Output:** `program/stakeholder_alignment.md`

### Tasks:
- Identify 3 stakeholder groups  
- Document their intelligence needs  
- Map your outputs to their needs  

---

# **7. Timeline**

A realistic 12-week plan:

| Weeks | Focus |
|-------|--------|
| 1–2 | SATs, Flash Briefs, RFIs |
| 3–4 | Threat Hunts, Telemetry Analysis |
| 5–6 | Incident Simulation + Estimates |
| 7–10 | Hybrid CVE Case Studies |
| 11–12 | PIRs, Metrics, Stakeholder Alignment |

---

# **8. Completion Outcomes**

By completing this plan, you will have:

- A full suite of CTI artifacts  
- Hybrid OSINT + telemetry case studies  
- Threat hunts and incident reconstructions  
- Flash briefs, RFIs, and estimates  
- APT profiles and infrastructure analysis  
- PIRs, metrics, and stakeholder alignment docs  
- A portfolio that demonstrates **full-spectrum CTI tradecraft**  

This plan fills **100% of the remaining gaps** in your CTI Skills Matrix.
