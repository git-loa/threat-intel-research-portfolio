# **MongoBleed — Cyber Threat Intelligence Case Study**  
## ** 02 -- Collection**

---

## **1. Purpose of This Phase**

The purpose of the Collection phase in this case study is to identify the **publicly available information sources** that inform an understanding of MongoBleed.  
This case study does **not** involve:

- active scanning  
- exploitation  
- interacting with exposed databases  
- collecting raw logs or forensic artifacts  

Instead, it relies entirely on **open‑source intelligence (OSINT)** and **public documentation**.

This aligns with standard CTI practice, where analysts synthesize information from trusted public sources to understand threat behavior, patterns, and defensive implications.

---

## **2. Information Categories Used**

The following categories of publicly available information inform the analysis.  
These categories represent **what CTI analysts consult**, not data personally collected or generated.

### **2.1 Security Blogs and Vendor Write‑ups**
Used to understand:

- historical MongoBleed campaigns  
- attacker workflows  
- ransom note behavior  
- scanning and exploitation patterns  

These sources provide narrative context and observed attacker behavior.

---

### **2.2 Internet‑wide Exposure Research**
Reports from organizations that study exposed databases help illustrate:

- how common unauthenticated MongoDB instances are  
- geographic and cloud‑provider distribution  
- why misconfigurations persist  

This provides environmental context for the threat.

---

### **2.3 MongoDB Official Documentation**
Used to understand:

- historical authentication defaults  
- common misconfiguration paths  
- recommended security practices  

This explains the root cause of MongoBleed.

---

### **2.4 Publicly Shared Ransom Note Samples**
These samples help identify:

- linguistic patterns  
- extortion themes  
- attacker reuse of templates  
- Bitcoin wallet reuse  

This supports behavioral clustering.

---

### **2.5 Open‑Source Tools and Proof‑of‑Concept Scripts**
Public GitHub repositories demonstrate:

- how attackers automate scanning  
- how ransom notes are deployed  
- how data deletion is scripted  

This informs the tooling and TTPs section of the analysis.

---

### **2.6 Community Threat Intelligence Feeds**
Used to understand:

- scanning IP ranges  
- opportunistic infrastructure  
- common indicators associated with exposed‑database campaigns  

These feeds provide examples of attacker infrastructure patterns.

---

## **3. Approach**

This case study uses a **passive, OSINT‑only approach**:

- No systems were scanned  
- No MongoDB instances were accessed  
- No exploitation or reproduction was performed  
- No proprietary or sensitive data was used  

All information is derived from **public, reputable, and openly accessible sources**.

The goal is to synthesize these sources into a structured CTI analysis that highlights attacker behavior, patterns, and defensive opportunities.

---

## **4. Transition to Processing**

The next phase (03_processing.md) will describe how the information from these public sources is:

- organized  
- normalized  
- categorized  
- prepared for analysis  

This ensures the analysis phase is structured, transparent, and reproducible.
