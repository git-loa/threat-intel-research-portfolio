
# 03 — Processing

## Overview
This phase normalizes, deduplicates, and classifies all raw indicators collected during the Collection phase. The goal is to distinguish malicious indicators from benign Microsoft infrastructure and contextual artifacts.

Indicators are grouped into:
- **Malicious** — directly associated with the phishing activity  
- **Suspicious** — infrastructure enabling or supporting the activity  
- **Benign** — legitimate Microsoft CDN or platform assets  

---

# 1. Normalization of Raw Indicators

### 1.1 URLs (Normalized)
- `https://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login`

### 1.2 Domains (Normalized)
- `login.ai.crforum.co.uk`
- `crforum.co.uk`
- `aadcdn.msauth.net`
- `aadcdn.msftauth.net`
- `aadcdn.msftauthimages.net`

### 1.3 IP Addresses (Normalized)
- `13.107.246.40`
- `13.107.213.38`
- `13.107.246.38`

### 1.4 CNAME Chain (Normalized)
- `orionfrontdoor-cwe6h9fbdtgyfffw.z02.azurefd.net`
- `mr-z02.tm-azurefd.net`
- `shed.dual-low.part-0010.t-0009.t-msedge.net`
- `part-0010.t-0009.t-msedge.net`

### 1.5 Hashes (Normalized)
- HTML body SHA‑256:
  ```
  799f9852cc3062b469abb80ec3f2df4ce2bf6d71d3ebbaf9413c41b7cf00fc4f
  ```
- Additional asset hashes (Microsoft CDN):
  - `04d29248ee3a13a074518c93a18d6efc491bf1f298f9b87fc989a6ae4b9fad7a`
  - `22d511adce8d3498f842b05df7281ce582fdc6817fe27606ecd21e72277857f3`
  - `2614197647b9e4c6ee27983866ea7e9423de6e9f9b76cb880653324f329fc6a7`
  - (full list in `/evidence/urlscan.txt`)

---

# 2. Indicator Classification

## 2.1 Malicious Indicators
Indicators directly tied to the phishing activity.

### **Malicious URL**
- `https://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login`  
**Reason:**  
- 13/95 VT detections (phishing)  
- URLScan verdict: phishing  
- Google Safe Browsing: malicious  
- Cloned Microsoft login UI on non‑Microsoft domain  

### **Malicious Domain**
- `login.ai.crforum.co.uk`  
**Reason:**  
- Host of phishing content  
- TLS certificate issued to this hostname  
- Behaviour consistent with credential harvesting  
- Not owned by Microsoft  

---

## 2.2 Suspicious Indicators
Infrastructure that enables or supports the phishing activity but is not inherently malicious.

### **Suspicious CNAME Chain (Azure Front Door)**
- `orionfrontdoor-cwe6h9fbdtgyfffw.z02.azurefd.net`
- `mr-z02.tm-azurefd.net`
- `shed.dual-low.part-0010.t-0009.t-msedge.net`
- `part-0010.t-0009.t-msedge.net`

**Reason:**  
- Azure Front Door is legitimate, but frequently abused for phishing  
- CNAME chain indicates attacker pointed the subdomain to Azure FD  
- Common TTP in compromised‑subdomain phishing campaigns  

### **Suspicious Certificate**
- Issuer: **GeoTrust TLS RSA CA G1**  
- Subject: `login.ai.crforum.co.uk`  
- Validity: 2026‑01‑13 → 2026‑07‑13  

**Reason:**  
- Microsoft does not use GeoTrust for authentication endpoints  
- Short validity period typical of commodity phishing setups  

### **Suspicious Base Domain**
- `crforum.co.uk`  
**Reason:**  
- Likely compromised  
- WHOIS shows legitimate ownership  
- Subdomain abuse is common in phishing  

---

## 2.3 Benign Indicators
Legitimate Microsoft infrastructure used by both real and phishing Microsoft login pages.

### **Benign Microsoft CDN Domains**
- `aadcdn.msauth.net`
- `aadcdn.msftauth.net`
- `aadcdn.msftauthimages.net`

**Reason:**  
- Used for legitimate Microsoft authentication assets  
- Loaded by both real and cloned login pages  

### **Benign Microsoft IPs (Contextual)**
- `13.107.246.40`
- `13.107.213.38`
- `13.107.246.38`

**Reason:**  
- Belong to Microsoft AS8075  
- Represent CDN endpoints, not attacker infrastructure  

### **Benign Hashes**
All JS/CSS/image hashes except the HTML body hash.

**Reason:**  
- Correspond to Microsoft CDN assets  
- Not attacker‑controlled  

---

# 3. Deduplication & Final Indicator Set

### **Malicious**
- URL:  
  - `https://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login`
- Domain:  
  - `login.ai.crforum.co.uk`

### **Suspicious**
- CNAME chain (Azure Front Door)
- TLS certificate (GeoTrust)
- Base domain (`crforum.co.uk`)

### **Benign**
- Microsoft CDN domains  
- Microsoft CDN IPs  
- Microsoft asset hashes  

---

# 4. Notes for Analysis Phase
- The malicious activity is isolated to the **subdomain**, not the registrable domain.  
- Azure Front Door abuse is a key part of the attacker’s infrastructure.  
- Microsoft CDN assets must be excluded from IOC lists to avoid false positives.  
- HTML body hash is useful for clustering similar phishing pages.  
- Behavioural indicators (cookies, JS variables) confirm a cloned Microsoft login flow.
