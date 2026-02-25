

# **CTI Lab Roadmap**
*A structured, 12‑week development plan for building professional‑grade Cyber Threat Intelligence skills using a self‑hosted Elastic Stack lab.*

---

## **Overview**

This roadmap outlines a step‑by‑step progression for developing practical CTI tradecraft using a controlled Elastic Stack environment. It focuses on internal telemetry analysis, threat hunting, structured analytic techniques, reporting, and hybrid OSINT + telemetry case studies. The goal is to build demonstrable, portfolio‑ready CTI capabilities while maintaining ethical and legal boundaries.

The roadmap is divided into five phases:

1. **Foundation** – Understanding telemetry and lab workflows  
2. **Threat Hunting** – Hypothesis‑driven hunts and ATT&CK mapping  
3. **Incident Simulation** – Flash briefs, RFIs, and intelligence estimates  
4. **Hybrid Case Studies** – Combining OSINT + Elastic telemetry  
5. **Program‑Level CTI Skills** – PIRs, metrics, and stakeholder alignment  

Each phase builds on the previous one and aligns directly with the CTI Skills Matrix.

---

# **Phase 1 — Foundation (Week 1–2)**  
### *Goal: Build confidence with telemetry and Elastic workflows.*

### **Objectives**
- Validate Elastic Agent data ingestion  
- Explore Kibana Discover for log triage  
- Build simple visualizations using Lens  
- Trigger safe, benign simulations to observe telemetry  
- Write your first internal intelligence note  

### **Skills Developed**
- Internal telemetry use  
- Data quality evaluation  
- OSINT + telemetry correlation  
- Evidence‑driven analysis  

### **Deliverables**
- `notes/telemetry_basics.md`  
- `intel_notes/first_internal_note.md`  

---

# **Phase 2 — Threat Hunting (Week 3–4)**  
### *Goal: Conduct structured, hypothesis‑driven hunts.*

### **Objectives**
- Create 3–5 threat hunting hypotheses  
- Use Kibana queries to test each hypothesis  
- Build timelines of suspicious activity  
- Map behaviors to MITRE ATT&CK  
- Document findings in a hunt report  

### **Skills Developed**
- Threat hunting support  
- Hypothesis‑driven analysis  
- ATT&CK mapping  
- Infrastructure pivoting (internal)  

### **Deliverables**
- `hunts/hunt_01.md`  
- `hunts/hunt_02.md`  
- `hunts/hunt_03.md`  

---

# **Phase 3 — Incident Simulation (Week 5–6)**  
### *Goal: Practice IR‑aligned CTI workflows.*

### **Objectives**
- Simulate a benign phishing execution chain  
- Use Kibana Timeline to reconstruct events  
- Write a Flash Brief  
- Write an RFI response  
- Produce a short intelligence estimate with calibrated warning language  

### **Skills Developed**
- Flash briefs  
- RFIs  
- Intelligence estimates  
- Warning Estimation Process (WEP)  
- Executive and technical communication  

### **Deliverables**
- `flash_briefs/phishing_sim_brief.md`  
- `rfi_responses/rfi_01.md`  
- `estimates/phishing_sim_estimate.md`  

---

# **Phase 4 — Hybrid Case Studies (Week 7–10)**  
### *Goal: Combine OSINT + Elastic telemetry for professional CTI case studies.*

### **Objectives**
- Select a trending CVE or threat  
- Collect OSINT (advisories, reports, scanning data)  
- Simulate benign activity related to the threat  
- Collect and analyze telemetry  
- Apply structured analytic techniques (ACH, 5W2H, Key Assumptions Check)  
- Produce a full lifecycle CTI case study  

### **Skills Developed**
- Intelligence cycle  
- Structured analytic techniques  
- Infrastructure analysis  
- Behavioral analysis  
- Reporting and dissemination  

### **Deliverables**
- `case-studies/<cve>/01_direction.md`  
- `case-studies/<cve>/02_collection.md`  
- `case-studies/<cve>/03_processing.md`  
- `case-studies/<cve>/04_analysis.md`  
- `case-studies/<cve>/05_dissemination.md`  

---

# **Phase 5 — Program‑Level CTI Skills (Week 11–12)**  
### *Goal: Demonstrate maturity and strategic CTI thinking.*

### **Objectives**
- Build Priority Intelligence Requirements (PIRs)  
- Create CTI metrics (coverage, hunts, detections, case studies)  
- Document process improvements  
- Write a stakeholder alignment summary  
- Build an APT profile using public OSINT  

### **Skills Developed**
- Requirements management  
- CTI program metrics  
- Stakeholder alignment  
- APT tracking  
- Process improvement  

### **Deliverables**
- `program/pirs.md`  
- `program/metrics.md`  
- `program/stakeholder_alignment.md`  
- `apt_profiles/<apt_name>.md`  

---

# **Completion Outcomes**

By the end of this roadmap, you will have:

- A fully documented Elastic‑based CTI lab  
- Multiple threat hunts  
- Flash briefs and RFI responses  
- Intelligence estimates  
- Hybrid OSINT + telemetry case studies  
- A PIR document and CTI metrics  
- A professional CTI portfolio aligned with industry expectations  

This roadmap is designed to be repeatable, scalable, and demonstrable to hiring managers.

