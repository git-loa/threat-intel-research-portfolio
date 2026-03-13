# 04 — Analysis

## Overview
This phase evaluates the processed indicators to determine the nature of the activity, the infrastructure involved, and the adversary’s likely intent and capability. The analysis integrates behavioural evidence, DNS and TLS characteristics, and detection patterns to validate or refute the initial hypothesis.

---

# 1. Behavioural Analysis

## 1.1 Microsoft Login Page Emulation
The page at `login.ai.crforum.co.uk` renders a **high‑fidelity clone** of the Microsoft 365 login interface. Behavioural artifacts observed in URLScan include:

- Page title: **“Sign in to your account”**
- PageID: **ConvergedError**
- Locale: `en-US`
- Microsoft‑specific metadata (`ReqLC`, `LocLC`)
- Microsoft‑style cookies:
  - `fpc`
  - `esctx`
  - `x-ms-gateway-slice`
  - `stsservicecookie`
- 23 JavaScript window variables used by Microsoft authentication flows:
  - `$Config`, `$Loader`, `$WebWatson`, `ServerData`, `PROOF`, `StringRepository`, `Telemetry`, etc.

These variables originate from legitimate Microsoft authentication scripts typically loaded from:

- `aadcdn.msauth.net`
- `aadcdn.msftauth.net`

**Assessment:**  
The behavioural profile is consistent with a **cloned Microsoft login page** loading real Microsoft assets to increase legitimacy.

---

# 2. Infrastructure Analysis

## 2.1 Host Domain
The phishing content is hosted on:

```
login.ai.crforum.co.uk
```

WHOIS confirms:

- Registrable domain: `crforum.co.uk`
- Registered since 1998
- Owned by a legitimate entity
- Nameservers: GoDaddy (`ns03.domaincontrol.com`, `ns04.domaincontrol.com`)

**Assessment:**  
The base domain is legitimate. The subdomain (`login.ai`) is almost certainly **compromised** or misconfigured.

---

## 2.2 DNS Resolution & CNAME Chain
DNS lookups reveal a multi‑stage CNAME chain:

```
login.ai.crforum.co.uk
  → orionfrontdoor-cwe6h9fbdtgyfffw.z02.azurefd.net
  → mr-z02.tm-azurefd.net
  → shed.dual-low.part-0010.t-0009.t-msedge.net
  → part-0010.t-0009.t-msedge.net
```

These domains belong to:

- **Azure Front Door** (`*.azurefd.net`)
- **Azure Traffic Manager** (`*.tm-azurefd.net`)
- **Microsoft Edge CDN** (`*.t-msedge.net`)

**Assessment:**  
The attacker pointed the compromised subdomain to **Azure Front Door**, which then serves attacker‑controlled content. This is a **common TTP** in modern phishing operations because:

- Azure Front Door provides global distribution  
- TLS termination is handled automatically  
- It blends into legitimate Microsoft infrastructure  
- It complicates takedown efforts  

---

## 2.3 IP Infrastructure
The serving IPs include:

- `13.107.213.38`
- `13.107.246.38`
- `13.107.246.40`

All belong to **Microsoft AS8075**.

**Assessment:**  
These IPs represent Microsoft CDN endpoints, not attacker‑owned servers.  
This is expected because:

- The phishing kit loads real Microsoft JS/CSS  
- Azure Front Door uses Microsoft IP space  
- The attacker is leveraging Microsoft infrastructure to host malicious content  

---

# 3. TLS Certificate Analysis

The TLS certificate for `login.ai.crforum.co.uk` is:

- Issuer: **GeoTrust TLS RSA CA G1** (DigiCert)
- Subject: `login.ai.crforum.co.uk`
- Validity: 2026‑01‑13 → 2026‑07‑13
- Key size: 2048‑bit RSA

**Assessment:**  
Microsoft does **not** use GeoTrust for authentication endpoints.  
This certificate is legitimate for the domain but confirms:

- The domain is not owned by Microsoft  
- The attacker controls the subdomain or DNS  
- The certificate was automatically issued (likely via GoDaddy or DigiCert automation)

This supports the compromised‑subdomain hypothesis.

---

# 4. Detection Analysis

VirusTotal URL detections:

- **13 / 95** vendors flagged the URL as malicious  
- All malicious detections classify it as **phishing**  
- Google Safe Browsing also flags it as phishing  
- Suspicious verdicts from DNS8 and URLQuery  
- Clean verdicts from many vendors due to:
  - use of legitimate Microsoft assets  
  - Azure Front Door hosting  
  - cloned UI  

**Assessment:**  
The detection pattern is typical of **commodity Microsoft phishing kits** that blend into legitimate infrastructure.

---

# 5. Threat Actor Capability & Intent

## 5.1 Capability Indicators
- Ability to compromise or abuse a legitimate domain  
- Ability to configure DNS to point to Azure Front Door  
- Ability to deploy a cloned Microsoft login interface  
- Ability to obtain a valid TLS certificate  
- Ability to evade some security engines by using Microsoft CDN assets  

**Assessment:**  
This reflects a **moderately capable** actor using **commodity phishing tooling**, not a highly sophisticated APT.

## 5.2 Intent Indicators
- Microsoft login impersonation  
- Credential harvesting workflow  
- Use of realistic UI and cookies  
- No malware delivery observed  

**Assessment:**  
The intent is **credential theft**, likely for:

- Account takeover  
- Business email compromise (BEC)  
- Initial access for financial fraud  

---

# 6. MITRE ATT&CK Mapping (Full)

| Tactic | Technique | ID | Justification |
|--------|-----------|----|---------------|
| Reconnaissance | Phishing for Information | **T1598** | Lures victims to credential‑harvesting page |
| Initial Access | Spearphishing Link | **T1566.002** | URL delivered via phishing campaigns |
| Credential Access | Web Credential Phishing | **T1056.003** | Fake Microsoft login page captures credentials |
| Resource Development | Acquire Infrastructure: Cloud Services | **T1583.006** | Abuse of Azure Front Door |
| Resource Development | Obtain Digital Certificates | **T1588.003** | GeoTrust certificate issued for malicious subdomain |
| Defense Evasion | Abuse of Cloud Infrastructure | **T1583.006** | Hosting malicious content behind Azure FD |
| Defense Evasion | Masquerading | **T1036** | Page mimics Microsoft login UI |
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

# 8. Hypothesis Validation

### **Initial Hypothesis:**  
The URL is part of a Microsoft 365 credential‑harvesting phishing campaign leveraging a compromised subdomain and Azure Front Door.

### **Validated By:**
- Cloned Microsoft login UI  
- Microsoft‑style cookies and JS variables  
- Azure Front Door CNAME chain  
- GeoTrust certificate (non‑Microsoft)  
- VirusTotal detections (13/95)  
- Google Safe Browsing malicious verdict  
- Legitimate base domain with compromised subdomain  

### **Final Assessment:**  
This is a **confirmed Microsoft credential‑harvesting phishing page** hosted on a **compromised subdomain** and delivered through **Azure Front Door**.

---

# 9. Key Findings

- The phishing page is a **high‑fidelity clone** of Microsoft’s login portal.  
- The attacker abused a **compromised subdomain** of a legitimate `.co.uk` domain.  
- The phishing content is served through **Azure Front Door**, blending into Microsoft infrastructure.  
- TLS certificate is valid but issued by **GeoTrust**, not Microsoft.  
- VirusTotal and Google Safe Browsing confirm phishing activity.  
- The infrastructure and behaviour align with **commodity phishing kits**, not targeted APT activity.
