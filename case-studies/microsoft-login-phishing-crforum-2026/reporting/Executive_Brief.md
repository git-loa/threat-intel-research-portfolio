
# **Executive Brief**

A malicious Microsoft‑themed login page was identified on the compromised subdomain `login.ai.crforum.co.uk`. The page is a high‑fidelity clone of the legitimate Microsoft 365 authentication portal and is designed to harvest user credentials. The phishing content is delivered through **Azure Front Door**, which allows the attacker to blend into legitimate Microsoft infrastructure and evade basic detection controls.

Analysis confirms that the registrable domain (`crforum.co.uk`) is legitimate and long‑standing, indicating that the subdomain (`login.ai`) was likely compromised rather than intentionally registered for malicious use. The attacker obtained a valid TLS certificate from GeoTrust, further increasing the credibility of the phishing page.

Automated scanning tools (URLScan, VirusTotal, Google Safe Browsing) consistently classify the URL as phishing. The infrastructure, behaviour, and detection patterns align with **commodity credential‑harvesting phishing kits**, commonly used in financially motivated campaigns such as business email compromise (BEC).

The threat actor demonstrates moderate capability: they can compromise DNS, deploy cloned Microsoft login interfaces, configure Azure Front Door, and obtain valid certificates. No indicators suggest targeted or APT‑level sophistication.

**Impact:**  
Users who interact with the phishing page risk credential theft, unauthorized access to Microsoft 365 accounts, and downstream compromise including BEC, data exposure, and account takeover.

**Recommended Actions:**  
- Block the malicious domain and URL across all security controls.  
- Reset credentials for any potentially exposed users.  
- Enforce MFA and review Azure AD sign‑ins for suspicious activity.  
- Notify the legitimate domain owner of the compromise.  
- Strengthen detection for Microsoft‑themed phishing hosted on cloud infrastructure.

This activity represents a confirmed credential‑harvesting phishing campaign leveraging a compromised subdomain and cloud‑based delivery infrastructure. The provided indicators and detection opportunities support immediate defensive action.
