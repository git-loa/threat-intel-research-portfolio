# Executive Summary

A phishing email impersonating Mutawa Marine Services was delivered to the recipient with a malicious RAR archive disguised as a PDF receipt. The attachment contained a Trojan Downloader, confirmed by VirusTotal (46/63 detections) and Hybrid Analysis (Threat Score 100/100). The email did not originate from the legitimate organization and instead came from a Hostwinds VPS, indicating clear domain spoofing.

The malware exhibited outbound encrypted communication (SSL/TLS) and TOR‑related behavior, consistent with downloader malware attempting to contact remote infrastructure for follow‑on payload delivery. VirusTotal’s Relations graph linked the payload to multiple phishing emails and ZIP archives across 2025, suggesting the sample is part of a broader commodity malware distribution campaign rather than a targeted attack.

No evidence indicates that the threat actor had specific interest in the recipient. The infrastructure, malware type, and delivery method all align with low‑sophistication cybercrime activity aimed at establishing initial access for secondary payload deployment such as credential stealers, RATs, or ransomware.
