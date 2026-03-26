# **Email Header — Parsed and Normalized**

### **1. Sender & Recipient Fields**
| Field | Value |
|-------|--------|
| **From** | `info@mutawamarine.com` |
| **Reply‑To** | `info.mutawamarine@mail.com` |
| **To** | `webmaster@redacted.org` |
| **Subject** | `webmaster@redacted.org your: Transfer Reference Number:(09674321)` |
| **Date** | Tue, 09 Jun 2020 22:58:27 ‑0700 |
| **Message‑ID** | `<20200609225823.DFAEAAF31A6B7414@mutawamarine.com>` |

---

### **2. Mail Flow (Received Chain)**  
Ordered **top → bottom** (as they appear in the header).

| Hop | Server | Details |
|------|---------|----------|
| **1** | `10.201.192.162` → `atlas125.free.mail.bf1.yahoo.com` | via HTTP |
| **2** | `x.x.x.x` (EHLO `sub.redacted.com`) → `atlas125.free.mail.bf1.yahoo.com` | via SMTPS |
| **3** | `10.197.41.148` (EHLO `sub.redacted.com`) → `mta4212.mail.bf1.yahoo.com` | via SMTP |
| **4** | `hwsrv-737338.hostwindsdns.com` (`192.119.71.157`) → `sub.redacted.com` | via Exim 4.80 |

**Originating IP (first non‑internal hop):**  
`192.119.71.157`  
Reverse DNS: `client-192-119-71-157.hostwindsdns.com`  
Hosting: Hostwinds (VPS provider)

---

### **3. Authentication Results**

| Mechanism | Result | Notes |
|-----------|---------|--------|
| **SPF** | **fail** | mutawamarine.com does not authorize the sending IP |
| **DKIM** | none | No DKIM signature present |
| **DMARC** | unknown / fail | Domain policy not satisfied |
| **X-Apparently-To** | present | Yahoo internal routing |

---

### **4. Anti‑Spam & Filtering Headers**

| Header | Value / Notes |
|--------|----------------|
| **X-Spam-Status** | No, score = ‑0.5 |
| **X-Spam-Score** | ‑4 |
| **X-Spam-Bar** | `/` |
| **X-Ham-Report** | Indicates HTML‑only message, Bayes score 0.36 |
| **SpamAssassin Rules Triggered** | `HTML_MESSAGE`, `MIME_HTML_ONLY`, `HTML_MIME_NO_HTML_TAG`, `BAYES_40` |
| **X-AntiAbuse** | Added by receiving server for tracking |

---

### **5. Content Metadata**

| Field | Value |
|--------|--------|
| **MIME-Version** | 1.0 |
| **Content-Type** | `multipart/mixed` with boundary `----=_NextPart_000_0012_BDB07B06.81B59493` |
| **Content-Length** | 557512 bytes |
| **Body Format** | HTML only (quoted-printable encoding) |
| **Attachment** | Present (CAB archive disguised as PDF) |

---

### **6. Notable Header Observations (Non‑Analytical)**  
These are **facts**, not interpretations:

- Reply‑To domain (`mail.com`) differs from From domain (`mutawamarine.com`).  
- Multiple internal Yahoo mail hops appear in the chain.  
- Originating IP belongs to a VPS provider (Hostwinds).  
- SPF explicitly states the sending IP is **not authorized** for mutawamarine.com.  
- No DKIM signature is present.  
- DMARC cannot validate due to SPF/DKIM failures.  
- Message is HTML‑only with no plaintext alternative.  
- Attachment referenced in MIME structure.
