# 05 — Dissemination

## Overview
This phase delivers actionable intelligence derived from the investigation. It includes a consolidated IOC table, detection opportunities, and mitigation recommendations suitable for SOC teams, defenders, and security engineering stakeholders.

---

# 1. Executive Summary (Non‑Technical)

A malicious Microsoft‑themed login page was identified on the compromised subdomain `login.ai.crforum.co.uk`. The page is a high‑fidelity clone of the legitimate Microsoft 365 authentication portal and is designed to harvest user credentials.

The phishing content is delivered through **Azure Front Door**, blending into legitimate Microsoft infrastructure and complicating detection. VirusTotal and Google Safe Browsing confirm the URL as phishing. The activity aligns with **commodity credential‑harvesting phishing kits**, not targeted or APT‑level operations.

This report provides actionable indicators, detection logic, and recommended mitigations.

---

# 2. Indicators of Compromise (IOC Table)

### 2.1 Malicious Indicators

| Type | Indicator | Notes |
|------|-----------|-------|
| URL | `https://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login` | Phishing landing page |
| Domain | `login.ai.crforum.co.uk` | Compromised subdomain hosting phishing content |
| File Hash (HTML) | `799f9852cc3062b469abb80ec3f2df4ce2bf6d71d3ebbaf9413c41b7cf00fc4f` | HTML body of phishing page |

---

### 2.2 Suspicious Indicators (Infrastructure)

| Type | Indicator | Notes |
|------|-----------|-------|
| CNAME | `orionfrontdoor-cwe6h9fbdtgyfffw.z02.azurefd.net` | Azure Front Door |
| CNAME | `mr-z02.tm-azurefd.net` | Azure Traffic Manager |
| CNAME | `shed.dual-low.part-0010.t-0009.t-msedge.net` | Microsoft Edge CDN |
| CNAME | `part-0010.t-0009.t-msedge.net` | Microsoft Edge CDN |
| Certificate | GeoTrust TLS RSA CA G1 | Non‑Microsoft CA for a Microsoft‑themed login page |
| Domain | `crforum.co.uk` | Likely compromised base domain |

---

### 2.3 Benign Indicators (Do Not Block)

| Type | Indicator | Notes |
|------|-----------|-------|
| Domain | `aadcdn.msauth.net` | Legitimate Microsoft CDN |
| Domain | `aadcdn.msftauth.net` | Legitimate Microsoft CDN |
| IP | `13.107.213.38` | Microsoft AS8075 |
| IP | `13.107.246.38` | Microsoft AS8075 |
| IP | `13.107.246.40` | Microsoft AS8075 |
| Hashes | Multiple JS/CSS hashes | Microsoft authentication assets |

---

# 3. Detection Opportunities (SOC‑Ready)

## 3.1 Network‑Based Detections
- Alert on outbound connections to:
  - `login.ai.crforum.co.uk`
  - Any subdomain of `crforum.co.uk` resolving to Azure Front Door unexpectedly
- Flag HTTP(S) requests where:
  - Host header contains `login.ai.crforum.co.uk`
  - TLS certificate subject = `login.ai.crforum.co.uk` AND issuer = GeoTrust

## 3.2 Proxy / Web Gateway Detections
- Block or alert on URLs matching:
  ```
  */f21c2995-59d9-4f21-96b8-fa9d30778b09/login
  ```
- Detect mismatched branding:
  - Microsoft login UI served from non‑Microsoft domains

## 3.3 Endpoint Detections
- Browser history entries containing:
  - `login.ai.crforum.co.uk`
- Credential submission to non‑Microsoft domains with:
  - Form fields named `login`, `passwd`, `username`, `password`

## 3.4 Cloud Security Detections
- Azure AD sign‑ins from:
  - Impossible travel following access to the phishing URL
  - New IPs immediately after exposure
  - Legacy authentication attempts

---

# 4. Mitigation Recommendations

## 4.1 Immediate Actions
- Block `login.ai.crforum.co.uk` at:
  - Firewall
  - Proxy
  - Secure Web Gateway
  - Email security filters
- Add malicious URL to threat intelligence feeds
- Notify users who may have interacted with the URL

## 4.2 Credential Security
- Force password resets for any user who accessed the URL
- Review Azure AD sign‑in logs for suspicious activity
- Enforce MFA for all accounts

## 4.3 Domain Owner Notification
- Contact the owner of `crforum.co.uk` to report:
  - Subdomain compromise
  - DNS misconfiguration
  - Unauthorized Azure Front Door routing

## 4.4 Long‑Term Hardening
- Implement domain‑based allowlists for Microsoft login endpoints
- Deploy phishing‑resistant MFA (FIDO2, Windows Hello)
- Enhance email filtering for Microsoft‑themed lures
- Monitor for Azure Front Door abuse patterns

---

# 5. Closing Notes

This dissemination package provides actionable intelligence for defenders and SOC teams. The indicators, detection logic, and mitigation steps are designed to support rapid response to credential‑harvesting phishing campaigns leveraging compromised subdomains and cloud infrastructure.

A full narrative report is available in `report.md`.

