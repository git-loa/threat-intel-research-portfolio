
# **Diamond Model — Learning Scenario**  
*A practical introduction for CTI research*

The **Diamond Model of Intrusion Analysis** is a framework used to understand and investigate intrusions by examining the relationships between four core elements:

- **Adversary** — who is behind the activity  
- **Infrastructure** — what systems they use  
- **Capability** — what tools or techniques they deploy  
- **Victim** — who they target  

The power of the Diamond Model is in **pivoting**: moving from one element to another to uncover more of the attacker’s activity.

---

# **Why the Diamond Model Matters in CTI**

- Helps structure investigations logically  
- Makes pivoting between indicators systematic  
- Reveals relationships between attacker components  
- Supports attribution (when possible)  
- Helps analysts think like investigators, not just collectors of IOCs  

---

# **Scenario: Suspicious Domain Hosting Multiple Scam Pages**

A university student reports a suspicious link received via SMS.  
The link leads to a fake “student financial aid” login page.

You begin investigating the domain using the Diamond Model.

---

# **Diamond Model Breakdown**

## **1. Adversary**  
The attacker is unknown, but we can infer characteristics:

- Uses phishing infrastructure  
- Targets university students  
- Motivated by credential theft  
- Likely part of a low‑skill cybercrime group (based on tooling)

Even without a name, the adversary “profile” is useful.

---

## **2. Infrastructure**  
This is where the investigation becomes concrete.

You discover:

- Domain: `student‑aid‑portal[.]info`  
- Registered 3 days ago  
- Hosted on a VPS provider known for abuse  
- Same IP hosts 12 other suspicious domains  
- SSL certificate is a free Let’s Encrypt cert  
- URLScan shows multiple phishing templates on the server

From here, you can **pivot**:

- IP → other domains  
- Registrar → other domains registered by same email  
- Hosting provider → known phishing clusters  

Infrastructure is often the richest pivot point.

---

## **3. Capability**  
What tools or techniques does the adversary use?

You observe:

- A cloned university login page  
- A credential‑harvesting PHP script  
- A redirect to the real university portal after harvesting  
- Obfuscated JavaScript to hide form submission  
- MITRE ATT&CK mapping:  
  - **T1566.002 — Spearphishing Link**  
  - **T1056.003 — Web Credential Harvesting**

This tells you the adversary’s **technical ability** and **intent**.

---

## **4. Victim**  
Who is being targeted?

- University students  
- Specifically those receiving financial aid  
- SMS delivery suggests targeting mobile users  
- The phishing page mimics the university’s financial aid portal

Victim analysis helps determine:

- scope  
- urgency  
- potential impact  
- who needs to be notified  

---

# **Diamond Model Summary Table**

| Element | Findings |
|--------|----------|
| **Adversary** | Unknown actor targeting students; credential theft motive |
| **Infrastructure** | Newly registered domain, VPS hosting, multiple phishing pages |
| **Capability** | Credential harvesting, cloned login pages, obfuscated JS |
| **Victim** | University students receiving financial aid |

---

# **How a CTI Analyst Uses This**

### **1. Pivoting**  
From the domain → IP → other domains → registrar email → more infrastructure.

### **2. Reporting**  
The Diamond Model gives structure to your findings.

### **3. Detection Engineering**  
SOC can block:

- the IP  
- the domain  
- the ASN  
- similar phishing templates  

### **4. Threat Hunting**  
Hunters can search for:

- traffic to the IP  
- similar phishing URLs  
- SMS phishing patterns  

### **5. Attribution (optional)**  
If multiple domains share:

- the same registrar email  
- the same hosting provider  
- the same phishing kit  

…you may identify a broader campaign.

---

# **Why This Scenario Matters**

This is exactly how real CTI analysts investigate phishing infrastructure:

- start with one domain  
- pivot to related infrastructure  
- map capabilities  
- identify victims  
- produce actionable intelligence  

The Diamond Model gives you a **mental map** for doing this cleanly and professionally.
