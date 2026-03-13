

# 02 — Collection

## Overview
This phase captures all raw evidence collected before any normalization or analytical interpretation. The objective is to gather complete, unmodified data from URLScan, VirusTotal, DNS, and WHOIS to support later processing and analysis.

---

# 1. Tools and Sources Used

### Automated Scanning
- URLScan.io  
- VirusTotal (URL and domain analysis)

### Enrichment
- DNS lookups (A, AAAA, CNAME)  
- WHOIS lookup  
- TLS certificate inspection  

### Evidence Capture
- Screenshots from URLScan  
- Screenshots from VirusTotal  
- Raw text exports (urlscan.txt, virustotal.txt, dns.txt, whois.txt)

All raw artifacts are stored in:

```
/evidence/
```

---

# 2. URLScan Collection

### 2.1 Submission Metadata
- Submitted: **2026‑03‑12 22:44 UTC**
- Source: Manual submission
- Scan location: CA (Canada)
- Final URL:
  ```
  https://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login
  ```

### 2.2 URLScan Verdict
- **Potentially Malicious**
- **Phishing against: Microsoft (Consumer)**
- Google Safe Browsing: **Malicious**
- “10000+ similar pages” → consistent with commodity Microsoft phishing kits

### 2.3 Network Transactions (Image)
(Full details in `urlscan_http_transactions.png`)

Key observations:
- 12 HTTP transactions
- 2 domains contacted:
  - `login.ai.crforum.co.uk` (host)
  - `aadcdn.msauth.net` (Microsoft CDN)
- Main IP: `13.107.246.40` (Microsoft AS8075)
- Behaviour consistent with Microsoft login UI loading patterns

### 2.4 Behavioural Indicators (Raw)
URLScan identified:
- **23 JavaScript window variables**, including:
  - `$Config`, `$Loader`, `$WebWatson`, `ServerData`, `PROOF`, `StringRepository`, `Telemetry`
- **4 Microsoft-style cookies** set by the phishing domain:
  - `fpc`
  - `esctx`
  - `x-ms-gateway-slice`
  - `stsservicecookie`
- Security headers:
  - `X-Content-Type-Options: nosniff`
  - `X-XSS-Protection: 0`
- Page title: **“Sign in to your account”**
- PageID: **ConvergedError**

These behaviours mimic legitimate Microsoft authentication flows.

### 2.5 Indicators Extracted by URLScan (Raw)
**Domains**
- `login.ai.crforum.co.uk`
- `aadcdn.msauth.net` (benign Microsoft CDN)

**IP Addresses**
- `13.107.246.40` (Microsoft AS8075)

**SHA‑256 Hashes**
A series of JS/CSS/image asset hashes were observed, including:
- `04d29248ee3a13a074518c93a18d6efc491bf1f298f9b87fc989a6ae4b9fad7a`
- `22d511adce8d3498f842b05df7281ce582fdc6817fe27606ecd21e72277857f3`
- `2614197647b9e4c6ee27983866ea7e9423de6e9f9b76cb880653324f329fc6a7`
- (full list in `/evidence/urlscan.txt`)

These correspond to Microsoft CDN assets.

---

# 3. VirusTotal URL Collection

### 3.1 Detection Summary
- **13 / 95** security vendors flagged the URL as malicious.
- Majority classify it as **phishing**, specifically Microsoft credential harvesting.
- Examples:
  - ADMINUSLabs — Malicious  
  - alphaMountain.ai — Phishing  
  - Cluster25 — Phishing  
  - CyRadar — Phishing  
  - Forcepoint ThreatSeeker — Phishing  
  - Fortinet — Phishing  
  - Google Safe Browsing — Phishing  
  - Kaspersky — Phishing  
  - Sophos — Phishing  
  - VIPRE — Phishing  
- Suspicious:
  - DNS8  
  - URLQuery  

### 3.2 Historical Metadata
- First submission: **2025‑10‑09 11:10:09 UTC**
- Last submission: **2026‑03‑12 22:43:18 UTC**
- Last analysis: **2026‑03‑12 22:43:18 UTC**

### 3.3 HTTP Response (Raw)
- Final URL:
  ```
  hxxps://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login
  ```
- Serving IP: `13.107.213.38`
- Status code: **200 OK**
- Content-Type: `text/html; charset=utf-8`
- Body length: **24.43 KB**
- Body SHA‑256:
  ```
  799f9852cc3062b469abb80ec3f2df4ce2bf6d71d3ebbaf9413c41b7cf00fc4f
  ```

### 3.4 Response Headers (Key Fields)
- `cache-control: no-store, no-cache`
- `pragma: no-cache`
- `expires: -1`
- `x-ms-ests-server: 2.1.23687.3 - WEULR1 ProdSlices`
- `x-ms-request-id: d03f1b42-e030-437a-9558-1ae2ffbf0600`
- `x-azure-ref: 20260312T224320Z-17fb8dccf88p4vlrhC1IADdvtn0000001fsg000000002t75`
- `x-xss-protection: 0`
- `x-content-type-options: nosniff`
- `referrer-policy: strict-origin-when-cross-origin`
- `content-security-policy-report-only: object-src 'none'; base-uri 'self'; script-src 'self' 'nonce-…' 'unsafe-inline' 'unsafe-eval' https://*.msauth.net https://*.msftauth.net https://*.msftauthimages.net https://*.msauthimages.net https://*.msidentity.com https://*.microsoftonline-p.com https://*.microsoftazuread-sso.com https://*.azureedge.net https://*.outlook.com https://*.office.com https://*.office365.com https://*.microsoft.com https://*.bing.com 'report-sample'; report-uri https://csp.microsoft.com/report/ESTS-UX-All`
- `link: <https://aadcdn.msauth.net>; rel=preconnect; crossorigin`

These headers match legitimate Microsoft login flows, despite the non‑Microsoft host domain.

### 3.5 HTML Metadata
- Title: **“Sign in to your account”**
- PageID: `ConvergedError`
- Locale: `en-US`
- Meta tags:
  - `viewport`
  - `format-detection: telephone=no`
  - `robots: none`

---

# 4. VirusTotal Domain Collection

### 4.1 TLS Certificate (Raw)
- Issuer: **GeoTrust TLS RSA CA G1** (DigiCert)
- Subject: `login.ai.crforum.co.uk`
- Validity: **2026‑01‑13 → 2026‑07‑13**
- Key size: 2048-bit RSA
- Thumbprint SHA‑256:
  ```
  ce0c715f458833c298592e3daf022240a1f7b302ea5a5aa3e2aa473150e614ae
  ```

Microsoft does **not** use GeoTrust for authentication endpoints.

### 4.2 DNS Records (Raw)
(Full output in `/evidence/dns.txt`)

**CNAME Chain**
```
login.ai.crforum.co.uk
  → orionfrontdoor-cwe6h9fbdtgyfffw.z02.azurefd.net
  → mr-z02.tm-azurefd.net
  → shed.dual-low.part-0010.t-0009.t-msedge.net
  → part-0010.t-0009.t-msedge.net
```

**A Records**
- `13.107.213.38`
- `13.107.246.38`

**AAAA Records**
- `2620:1ec:46::38`
- `2620:1ec:bdf::38`

These IPs belong to Microsoft AS8075 (Azure Front Door / Edge CDN).

### 4.3 Detection Stats
- Malicious: **6**
- Suspicious: **2**
- Harmless/Undetected: remainder

### 4.4 WHOIS (Registrable Domain)
```
crforum.co.uk
Registered: 29-Apr-1998
Expires: 29-Apr-2028
Nameservers: ns03.domaincontrol.com, ns04.domaincontrol.com
```

WHOIS cannot be performed on `login.ai.crforum.co.uk` because `.co.uk` only supports WHOIS at the registrable domain level.

---

# 5. Screenshots Collected

Stored in:

```
/evidence/screenshots/
```

### URLScan Screenshots
- Page screenshot - `urlscan_screenshot_page.png`
- Summary page - `urlscan_summary.png`
- Behaviour section - `urlscan_behavioural.png`
- Indicators section - `urlscan_indicators.png`
- Network transactions - `urlscan_http_transactions.png`

### VirusTotal Screenshots
- Detection ratio (13/95) and Vendor verdicts - `virustotal_detection.png`
- HTTP response headers and HTML body hash - `virustotal_hash_headers.png`, `virustotal_headers.png`
- Category classification - `virustotal_details_categories.png`

---

# 6. Raw Indicators (Unfiltered)

### URLs
- `https://login.ai.crforum.co.uk/f21c2995-59d9-4f21-96b8-fa9d30778b09/login`

### Domains
- `login.ai.crforum.co.uk` (malicious host)
- `crforum.co.uk` (legitimate registrable domain)
- `aadcdn.msauth.net` (benign Microsoft CDN)

### CNAME Chain
- `orionfrontdoor-cwe6h9fbdtgyfffw.z02.azurefd.net`
- `mr-z02.tm-azurefd.net`
- `shed.dual-low.part-0010.t-0009.t-msedge.net`
- `part-0010.t-0009.t-msedge.net`

### IPs
- `13.107.246.40`
- `13.107.213.38`
- `13.107.246.38`

### Hashes
- HTML body SHA‑256:
  ```
  799f9852cc3062b469abb80ec3f2df4ce2bf6d71d3ebbaf9413c41b7cf00fc4f
  ```
- Additional asset hashes (full list in urlscan.txt)

---

# 7. Notes for Processing Phase
- Microsoft CDN assets must be filtered out as **benign infrastructure**.
- HTML body hash likely corresponds to a generic Microsoft login template.
- IPs belong to Microsoft AS8075 → contextual, not malicious.
- CNAME chain shows routing through **Azure Front Door**, a common technique in compromised‑subdomain phishing.
- Primary malicious indicator remains the **non‑Microsoft host domain** (`login.ai.crforum.co.uk`).
