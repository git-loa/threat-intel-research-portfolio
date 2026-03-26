

# **Infrastructure Analysis**

## **1. Sender IP (192.119.71.157 — Hostwinds VPS)**  
The email originated from a **Hostwinds VPS**, not from Microsoft 365 (the legitimate mail host for mutawamarine.com).  
VPS providers are commonly used for:

- disposable phishing infrastructure  
- malware distribution  
- botnet nodes  
- spoofed email campaigns  

This strongly suggests the email did **not** originate from the legitimate organization.

---

## **2. Sender Domain (mutawamarine.com)**  
The domain is:

- **legitimate**  
- **20+ years old**  
- **hosted on Microsoft 365**  
- **properly configured with SPF + DMARC**  

But the phishing email:

- did **not** come from Microsoft 365  
- did **not** pass SPF  
- had **no DKIM signature**  
- failed DMARC alignment  

This indicates **domain spoofing**.

---

## **3. Reply‑To Domain (mail.com)**  
The Reply‑To domain is:

- unrelated to mutawamarine.com  
- a free public email provider  
- commonly used in phishing to redirect victims  

This mismatch is a strong indicator of fraudulent intent.

---

## **4. Mail Flow (Header Analysis)**  
The routing path shows:

- The message passed through Yahoo infrastructure  
- Then originated from a Hostwinds VPS  
- Then delivered to the victim  

This is inconsistent with:

- Microsoft 365  
- mutawamarine.com’s legitimate mail servers  
- any normal business email flow  

This supports the conclusion that the email was **forged**.

---

## **5. Summary of Infrastructure Findings**

- The sender IP does **not** belong to the legitimate domain.  
- The domain was **spoofed**.  
- The email authentication mechanisms (SPF/DKIM/DMARC) **failed**.  
- The Reply‑To domain is **unrelated** and **suspicious**.  
- The infrastructure matches **commodity phishing + malware delivery** patterns.  
