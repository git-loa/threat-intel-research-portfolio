# **Email Body — Parsed and Normalized**

### **1. Visible Text (Decoded from HTML)**

```
Good day webmaster@redacted.org,

As instructed, funds has been transferred to your account this morning via SWIFT.

Details are as below and a receipt of payment is attached.

Interbank Transfer Reference Number: 09674321
Transaction Status: Successful
Transaction Date / Time: 10-06-2020 09:18:55
Transaction Description: Balance / Final Payment
From Account: 3105234819
Amount: 149,650
Currency: usd
Bank Charges: $ 146.05

Best regards,

Mr. James Jackson
Accounts Payable
SEC MARINE SERVICES PTE LTD
```

---

### **2. HTML Structure (Simplified)**  
Key structural elements extracted from the HTML:

- `<p>` blocks containing greeting, transaction details, and signature  
- Inline `<span>` styling (colors, vertical-align)  
- No plaintext alternative  
- Quoted‑printable encoding (`=3D`, `=20`, etc.)  
- No embedded images  
- No URLs present  
- HTML-only MIME part

---

### **3. MIME Structure (From Body Section)**

```
This is a multi-part message in MIME format.

------=_NextPart_000_0012_BDB07B06.81B59493
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
```

- Single HTML part  
- No plaintext part  
- No inline attachments  
- Attachment referenced only in the MIME boundary (not in the HTML)

---

### **4. Attachment Reference (From MIME Boundary)**

The body references an attachment implicitly:

- “a receipt of payment is attached”
- MIME structure indicates a **multipart/mixed** message
- Attachment is not embedded in the HTML; it is a separate MIME part

Attachment filename (from header):

```
SWT_#09674321____PDF__.CAB
```

---

### **5. Social Engineering Elements (Non‑Analytical Extraction)**  
These are **observed elements**, not interpretations:

- Greeting includes the recipient’s email address  
- Financial theme: SWIFT transfer  
- Claims of successful transaction  
- Provides fabricated transaction details  
- Signature block includes a person’s name and company  
- Tone is formal and business‑like  
- No hyperlinks present  
- Encourages opening the attachment to view the “receipt”

---

### **6. Encoding Details**

- **Encoding:** quoted‑printable  
- **Character set:** `iso-8859-1`  
- **HTML only:** no plaintext alternative  
- **Inline styles:** color, bold, vertical-align  
- **No scripts or external resources**
