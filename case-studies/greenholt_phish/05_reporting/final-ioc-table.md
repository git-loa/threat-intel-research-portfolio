# Final IOC Table

The following Indicators of Compromise (IOCs) were identified during the investigation of the phishing email and associated malware. These indicators support detection engineering, threat hunting, and incident response activities.

| Category | Indicator | Description / Notes |
|---------|-----------|---------------------|
| **Sender IP** | `192.119.71.157` | Hostwinds VPS; origin of spoofed phishing email |
| **Spoofed Domain** | `mutawamarine.com` | Legitimate business domain impersonated by attacker |
| **Reply-To Domain** | `mail.com` | Public email provider used to redirect victim responses |
| **Attachment Name** | `SWT_#09674321____PDF__.CAB` | Malicious RAR/CAB archive disguised as a PDF receipt |
| **Extracted Payload** | `SWT_#09674321__PDF.com` | Malicious .NET executable masquerading as a document |
| **SHA-256 (Archive)** | `2e91c533615a9bb8929ac4bb76707b2444597ce063d84a4b33525e25074fff3f` | Hash of the malicious archive delivered via phishing |
| **SHA-256 (Payload)** | `05261f5a64f81a34fdde66cc82b573773e5dfa3bb5c3ccbfe2d0eef0e9d7b6c9` | Hash of the extracted Trojan Downloader executable |
| **Email Authentication** | SPF: Fail | Sender IP not authorized for domain |
| | DKIM: None | No DKIM signature present |
| | DMARC: Fail | Alignment failed; confirms spoofing |
| **Legitimate MX Record** | `mutawamarine-com.mail.protection.outlook.com` | Microsoft 365 mail infrastructure for the real domain |
| **Nameservers** | `DNS1.STABLETRANSIT.COM` | Rackspace |
| | `DNS2.STABLETRANSIT.COM` | Rackspace |
| **Behavioral Indicators** | SSL/TLS outbound traffic | Downloader attempted encrypted communication |
| | TOR-related activity | Possible anonymized outbound communication |
| | Multi-process execution | Common behavior in downloader malware |


