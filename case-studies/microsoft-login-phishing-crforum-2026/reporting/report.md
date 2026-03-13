
# Microsoft Login Phishing on Compromised Subdomain (`login.ai.crforum.co.uk`)
### Final Intelligence Report  
### Prepared by: Leonard Okyere Afeke  
### Date: March 2026

---

# Executive Summary

A malicious Microsoft‑themed login page was identified on the compromised subdomain `login.ai.crforum.co.uk`. The page is a high‑fidelity clone of the legitimate Microsoft 365 authentication portal and is designed to harvest user credentials.

The phishing content is delivered through **Azure Front Door**, blending into legitimate Microsoft infrastructure and complicating detection. VirusTotal, URLScan, and Google Safe Browsing confirm the URL as phishing. The activity aligns with **commodity credential‑harvesting phishing kits**, not targeted or APT‑level operations.

This report documents the full investigation, including collection, processing, analysis, infrastructure mapping, MITRE ATT&CK alignment, and actionable defensive recommendations.

---

# 1. Background & Trigger

A suspicious Microsoft‑themed login URL was identified in the OpenPhish feed:

```
https://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login
```

Initial automated scanning (URLScan + VirusTotal) indicated phishing activity. The domain structure (`login.ai.crforum.co.uk`) strongly mimics legitimate Microsoft authentication endpoints, prompting a full CTI investigation.

---

# 2. Intelligence Requirements

The investigation sought to answer:

- **IR‑1:** Is the URL part of a credential‑harvesting phishing campaign?  
- **IR‑2:** What infrastructure hosts and delivers the phishing content?  
- **IR‑3:** What indicators of compromise (IOCs) can be extracted?  
- **IR‑4:** What is the threat actor’s likely intent and capability?  
- **IR‑5:** How does the activity map to MITRE ATT&CK?  
- **IR‑6:** What actionable intelligence can be provided to defenders?

---

# 3. Collection Summary

### 3.1 URLScan Findings
- Verdict: **Potentially Malicious**
- Google Safe Browsing: **Malicious**
- Page title: *“Sign in to your account”*
- Microsoft‑style cookies (`fpc`, `esctx`, `stsservicecookie`)
- 23 Microsoft authentication JS variables
- Network requests to:
  - `login.ai.crforum.co.uk`
  - `aadcdn.msauth.net` (Microsoft CDN)

### 3.2 VirusTotal URL Findings
- **13 / 95** vendors flagged the URL as malicious  
- Google Safe Browsing: phishing  
- Body SHA‑256:  
  `799f9852cc3062b469abb80ec3f2df4ce2bf6d71d3ebbaf9413c41b7cf00fc4f`

### 3.3 VirusTotal Domain Findings
- TLS certificate issued by **GeoTrust TLS RSA CA G1**  
- Not a Microsoft certificate  
- DNS CNAME chain points to Azure Front Door

### 3.4 DNS & WHOIS
- CNAME chain:
  ```
  login.ai.crforum.co.uk
    → orionfrontdoor-cwe6h9fbdtgyfffw.z02.azurefd.net
    → mr-z02.tm-azurefd.net
    → shed.dual-low.part-0010.t-0009.t-msedge.net
    → part-0010.t-0009.t-msedge.net
  ```
- IPs: Microsoft AS8075  
- Registrable domain: `crforum.co.uk` (legitimate, likely compromised)

---

# 4. Processing Summary

Indicators were normalized and classified:

### **Malicious**
- URL: phishing landing page  
- Domain: `login.ai.crforum.co.uk`  
- HTML body hash  

### **Suspicious**
- Azure Front Door CNAME chain  
- GeoTrust certificate  
- Base domain (`crforum.co.uk`)  

### **Benign**
- Microsoft CDN domains  
- Microsoft CDN IPs  
- Microsoft JS/CSS asset hashes  

---

# 5. Analysis

## 5.1 Behavioural Analysis
The page is a **high‑fidelity clone** of Microsoft’s login interface, using:

- Real Microsoft CDN assets  
- Real Microsoft CSP headers  
- Real Microsoft telemetry endpoints  
- Microsoft‑style cookies and JS variables  

This strongly indicates a **credential‑harvesting phishing kit**.

---

## 5.2 Infrastructure Analysis

### Compromised Subdomain
`crforum.co.uk` is a legitimate domain.  
`login.ai.crforum.co.uk` is almost certainly **compromised**.

### Azure Front Door Abuse
The CNAME chain shows the attacker pointed the subdomain to Azure Front Door, a common TTP because:

- It blends into Microsoft infrastructure  
- It provides global distribution  
- It complicates takedown efforts  

### TLS Certificate
The certificate is valid but issued by **GeoTrust**, not Microsoft.  
This confirms the domain is not owned by Microsoft.

### IP Infrastructure
All IPs belong to Microsoft AS8075.  
This is expected because Azure Front Door and Microsoft CDNs serve the content.

---

## 5.3 Threat Actor Capability & Intent

### Capability
- Able to compromise DNS or hosting  
- Able to configure Azure Front Door  
- Able to deploy cloned Microsoft login pages  
- Able to obtain valid TLS certificates  

**Assessment:** Moderately capable actor using commodity phishing tooling.

### Intent
- Credential theft  
- Likely for account takeover or BEC  
- No malware delivery observed  

---

# 6. MITRE ATT&CK Mapping

| Tactic | Technique | ID | Justification |
|--------|-----------|----|---------------|
| Reconnaissance | Phishing for Information | **T1598** | Lures victims to credential‑harvesting page |
| Initial Access | Spearphishing Link | **T1566.002** | URL delivered via phishing campaigns |
| Credential Access | Web Credential Phishing | **T1056.003** | Fake Microsoft login page captures credentials |
| Resource Development | Acquire Infrastructure: Cloud Services | **T1583.006** | Abuse of Azure Front Door |
| Resource Development | Obtain Digital Certificates | **T1588.003** | GeoTrust certificate issued for malicious subdomain |
| Defense Evasion | Masquerading | **T1036** | Page mimics Microsoft login UI |
| Defense Evasion | Abuse of Cloud Infrastructure | **T1583.006** | Hosting malicious content behind Azure FD |
| Command & Control | Web Service | **T1102** | Azure Front Door acts as delivery layer |

---

# 7. Diamond Model

## Adversary
- Likely financially motivated  
- Uses commodity phishing kits  
- No indicators of targeted or APT‑level sophistication  

## Infrastructure
- Compromised subdomain: `login.ai.crforum.co.uk`  
- Azure Front Door CNAME chain  
- Microsoft CDN assets  
- GeoTrust TLS certificate  

## Capability
- Deploys cloned Microsoft login pages  
- Configures DNS to cloud infrastructure  
- Obtains valid TLS certificates  
- Uses Microsoft CDN to evade detection  

## Victim
- Microsoft 365 users  
- Likely enterprise email accounts  
- Potential targets for BEC or credential theft  

---

# 8. Indicators of Compromise (IOC Table)

| Type | Indicator | Notes |
|------|-----------|-------|
| URL | `https://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login` | Phishing landing page |
| Domain | `login.ai.crforum.co.uk` | Compromised subdomain |
| File Hash | `799f9852cc3062b469abb80ec3f2df4ce2bf6d71d3ebbaf9413c41b7cf00fc4f` | HTML body hash |
| CNAME | `orionfrontdoor-cwe6h9fbdtgyfffw.z02.azurefd.net` | Azure Front Door |
| CNAME | `mr-z02.tm-azurefd.net` | Azure Traffic Manager |
| CNAME | `shed.dual-low.part-0010.t-0009.t-msedge.net` | Microsoft Edge CDN |
| CNAME | `part-0010.t-0009.t-msedge.net` | Microsoft Edge CDN |

Benign Microsoft infrastructure excluded.

---

# 9. Detection Opportunities

### Network
- Alert on outbound connections to `login.ai.crforum.co.uk`
- Detect mismatched branding (Microsoft login served from non‑Microsoft domains)

### Proxy / Web Gateway
- Block URLs matching:
  ```
  */f21c2995-59d9-4f21-96b8-fa9d30778b09/login
  ```

### Endpoint
- Detect credential submission to non‑Microsoft domains

### Cloud
- Review Azure AD sign‑ins for impossible travel or suspicious IPs

---

# 10. Mitigation Recommendations

### Immediate
- Block malicious domain and URL  
- Reset credentials for exposed users  
- Notify domain owner (`crforum.co.uk`)  

### Medium‑Term
- Enforce MFA  
- Harden email filtering  
- Monitor for Azure Front Door abuse patterns  

### Long‑Term
- Deploy phishing‑resistant MFA (FIDO2)  
- Implement domain allowlists for Microsoft login endpoints  

---

# 11. Conclusion

This investigation confirms that `login.ai.crforum.co.uk` hosts a **credential‑harvesting phishing page** impersonating Microsoft 365. The attacker leveraged a **compromised subdomain** and **Azure Front Door** to deliver a highly convincing clone of the Microsoft login experience.

The activity aligns with **commodity phishing operations**, not targeted attacks.  
Actionable indicators, detection logic, and mitigations have been provided to support defensive operations.
