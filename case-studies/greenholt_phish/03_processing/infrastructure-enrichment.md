
# **Infrastructure Enrichment**

This document consolidates all extracted infrastructure details from the phishing email, including IP, domain, DNS, and mail routing information.  
No analysis or interpretation is included here — this is strictly factual enrichment.

---

# **1. Sending IP Address — 192.119.71.157**

## **1.1 Basic IP Information (IPInfo)**

| Field | Value |
|-------|--------|
| **IP Address** | 192.119.71.157 |
| **ASN** | AS54290 |
| **AS Name** | Hostwinds LLC |
| **AS Domain** | hostwinds.com |
| **Country** | United States |
| **Country Code** | US |
| **Continent** | North America |
| **Continent Code** | NA |

## **1.2 Additional Observations (Extraction Only)**

- Reverse DNS (from email header):  
  `client-192-119-71-157.hostwindsdns.com`
- Hostwinds is a VPS hosting provider.
- IP appears as the **originating SMTP sender** in the email header.
- No geolocation anomalies noted.

---

# **2. Sender Domain — mutawamarine.com**

## **2.1 WHOIS Registration**

| Field | Value |
|-------|--------|
| **Domain Name** | mutawamarine.com |
| **Registrar** | PDR Ltd. d/b/a PublicDomainRegistry.com |
| **Registrar WHOIS Server** | whois.PublicDomainRegistry.com |
| **Registrar URL** | http://www.publicdomainregistry.com |
| **Creation Date** | 2003‑12‑15 |
| **Updated Date** | 2025‑12‑09 |
| **Registry Expiry Date** | 2026‑12‑15 |
| **Domain Status** | clientTransferProhibited |
| **DNSSEC** | unsigned |

## **2.2 Registrant Information (Redacted)**

| Field | Value |
|-------|--------|
| **Registrant Name** | General Manager |
| **Registrant Organization** | REDACTED FOR PRIVACY |
| **Registrant Country** | AE (United Arab Emirates) |
| **Registrant Email** | info@pentame.com |
| **Registrant Phone** | +971.26413920 |
| **Registrant Address** | PO Box 30036, Abu Dhabi, UAE |

*(Admin and Tech contacts match Registrant.)*

---

## **2.3 Nameservers**

| Nameserver |
|------------|
| DNS1.STABLETRANSIT.COM |
| DNS2.STABLETRANSIT.COM |

---

## **2.4 MX Records (Mail Exchange)**

| Preference | Hostname | IP | Provider |
|------------|----------|----|----------|
| **0** | mutawamarine-com.mail.protection.outlook.com | 52.101.144.0 | Microsoft (AS8075) |
| **0** | mutawamarine-com.mail.protection.outlook.com | 2a01:111:f403:cc2c::1 | Microsoft (IPv6) |

---

## **2.5 Email Authentication Records**

### **SPF**
- SPF record exists (confirmed by MXToolbox).

### **DMARC**
- DMARC record **published**.
- Policy: **Quarantine/Reject enabled**.

### **DKIM**
- Not shown in MXToolbox output.  
- Email header indicates **no DKIM signature present**.

---

# **3. Reply‑To Domain — mail.com**

## **3.1 Basic WHOIS (High‑Level Extraction)**  
*(mail.com is a large public email provider; WHOIS is not meaningful for attribution.)*

| Field | Value |
|-------|--------|
| **Domain** | mail.com |
| **Owner** | 1&1 Mail & Media Inc. |
| **Type** | Public email service |
| **Usage** | Freely available email accounts |

## **3.2 DNS / MX (High‑Level)**

- mail.com uses **1&1 / GMX** mail infrastructure.
- No direct relationship to mutawamarine.com.

---

# **4. Email Routing (From Header)**

| Hop | Server | Notes |
|------|---------|--------|
| **1** | `10.201.192.162` → `atlas125.free.mail.bf1.yahoo.com` | via HTTP |
| **2** | `x.x.x.x` (EHLO `sub.redacted.com`) → Yahoo | via SMTPS |
| **3** | `10.197.41.148` → Yahoo | via SMTP |
| **4** | `hwsrv-737338.hostwindsdns.com (192.119.71.157)` → recipient | Originating IP |

---

# **5. Consolidated Indicators (Infrastructure Only)**

| Type | Value | Notes |
|------|--------|--------|
| IP | 192.119.71.157 | Hostwinds VPS |
| Domain | mutawamarine.com | Claimed sender |
| Domain | mail.com | Reply‑To domain |
| MX | mutawamarine-com.mail.protection.outlook.com | Microsoft 365 |
| Nameserver | DNS1.STABLETRANSIT.COM | Rackspace |
| Nameserver | DNS2.STABLETRANSIT.COM | Rackspace |
