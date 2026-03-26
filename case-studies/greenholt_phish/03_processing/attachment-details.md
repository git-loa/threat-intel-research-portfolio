
# Attachment Details

## **1. File Metadata (from Email + VT)**
- **Original Filename:** `SWT_#09674321____PDF__.CAB`  
- **Alternate Filenames (VT):**  
  - `application.rar`  
  - `SWT__09674321____PDF__.CAB`  
  - `attachment.CAB`  
  - `download.rar`  
  - `download.rar.txt`  
  - `aaa`  
- **File Type:** RAR archive (v5)  
- **MIME Type:** `application/octet-stream`  
- **Magic:** `RAR archive data, v5`  
- **File Size:** 400.26 KB (409,868 bytes)  

---

## **2. Cryptographic Hashes**
| Hash Type | Value |
|-----------|--------|
| **MD5** | `f4dd3456cdb1976a145c1179a4d461ec` |
| **SHA‑1** | `5a2bb8188377c15c036843b4a6ab9b0c0f2c1607` |
| **SHA‑256** | `2e91c533615a9bb8929ac4bb76707b2444597ce063d84a4b33525e25074fff3f` |
| **SSDEEP** | `12288:Mj6ygt8RoYqMAnuL8I0A81aBYoIm9+X3B4k56:EgqRJCuL87toIC+X3O` |
| **TLSH** | `T12C94238893562439A8F7385DAFD0CFB5EFE898E74E8F97709CFD609E5D140446205AC2` |

---

## **3. VirusTotal Summary**
- **Detection:** 46 / 63 vendors flagged as malicious  
- **File Type:** RAR archive  
- **Common Labels:**  
  - Trojan  
  - Downloader  
  - Generic malware  
- **Observed Filenames:** multiple variants across submissions (see above)

---

## **4. Hybrid Analysis — Submission Metadata**
- **Submission Name:** `attachment.pdf.cab`  
- **SHA‑256:** `2e91c533615a9bb8929ac4bb76707b2444597ce063d84a4b33525e25074fff3f`  
- **File Type:** RAR archive  
- **Threat Score:** **100/100**  
- **Status:** malicious  
- **Labeled As:** `Trojan.Downloader.dd`  
- **AV Detection (MetaDefender subset):** 3/26 (~11%)  
- **Last Sandbox Report:** 2025‑12‑02  
- **Environments:** Windows 7 (32/64‑bit), Windows 10, quickscan  

---

## **5. Extracted Payload (from Hybrid Analysis)**
Hybrid Analysis detonated the archive and extracted a Windows executable:

- **Filename(s):**  
  - `aaa.pdf`  
  - `SWT_#09674321__PDF.com`  
- **File Type:** PE32 executable (GUI), .NET assembly  
- **SHA‑256:** `05261f5a64f81a34fdde66cc82b573773e5dfa3bb5c3ccbfe2d0eef0e9d7b6c9`  
- **Threat Score:** 100/100  
- **Indicators Matched:** 30–128 (varies by submission)  

---

## **6. Behavioral Observations (Extraction Only)**
Hybrid Analysis reports:

- Multi‑process activity  
- Network traffic observed  
- SSL traffic decrypted  
- TOR analysis performed  
- Multiple behavioral indicators matched  

*(Interpretation will occur in 04 — Analysis.)*

---

## **7. Historical Hybrid Analysis Submissions**
Hybrid Analysis shows multiple submissions of both the archive and the extracted payload:

| Date | Input Name | Type | SHA‑256 | Threat Level |
|------|------------|------|---------|--------------|
| Feb 19 2025 | `aaa.pdf` | PE32 (.NET) | `05261f5a...` | malicious |
| Jan 1 2024 | `bounty-45220149880124486` | PE32 (.NET) | `05261f5a...` | malicious |
| Sep 21 2023 | `SWT_#09674321____PDF__.CAB` | RAR | `2e91c533...` | malicious |
| Jan 2 2022 | `SWT_#09674321__PDF.com` | PE32 (.NET) | `05261f5a...` | malicious |
| Jan 2 2022 | `attachment.pdf.cab` | RAR | `2e91c533...` | malicious |
| Dec 31 2021 | `SWT_#09674321__PDF.com` | PE32 (.NET) | `05261f5a...` | malicious |
| Dec 31 2021 | `SWT_#09674321____PDF__.CAB` | RAR | `2e91c533...` | malicious |
