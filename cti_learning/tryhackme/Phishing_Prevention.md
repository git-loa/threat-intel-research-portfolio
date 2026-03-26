# Learning Objectives
 - Understand core email security controls (SPF, DKIM, DMARC, S/MIME)
- Analyze SMTP network traffic and email content
- Explore anti-phishing protection measures

## Core email security controls
These are the controls that guide how emails are sent and received.

## Sender Policy Framework (SPF) 
This a framework used to authenticte the sender of an email

| Verification Result |	Intended Action |
|---------|------------|
Pass, Neutral, None |	Accept (Allow and process the email)
SoftFail, PermError	| Flag (Mark as suspicious but allow)
Fail, TempError	| Reject (Immediately discard the email)

####  SPF Record sample
> v=spf1 ip4:127.0.0.1 include:_spf.google.com -all

- v=spf1 Signifies the start of the SPF record
- ip4:127.0.0.1 Specifies which IP can send mail (IPv4 in this case)
- include:_spf.google.com Specifies which domain can send mail
- -all Non-authorized emails will be rejected
Tools

## DomainKeys Identified Mail (DKIM):

- DKIM stands for DomainKeys Identified Mail and is used for the authentication of an email that’s being sent. Like SPF, DKIM is an open standard for email authentication that is used for DMARC alignment. A DKIM record exists in the DNS, but it is more complex than SPF. DKIM’s advantage is that it can survive forwarding, which makes it superior to SPF and a foundation for securing your email.

#### DKIM Record sample
> v=DKIM1; k=rsa; p=<public_key>

- v=DKIM1 Specifies the version of DKIM being used (optional)
- k=rsa The key type. The RSA encryption algorithm is standard
- p= This is the public key that will be matched to the private key to verify the DKIM signature

## Domain-Based Message Authentication, Reporting, and Conformance (DMARC)

- DMARC is an open source standard, uses a concept called alignment to tie the result of two other open source standards,  SPF (a published list of servers that are authorized to send email on behalf of a domain) and DKIM (a tamper-evident domain seal associated with a piece of email), to the content of an email.

- DMARC ensures the sender's domain matches the domains verified by SPF and DKIM. If the alignment fails, DMARC instructs the recipient server on how to handle the email based on a policy specified in the record.

#### DMARC Record sample
> v=DMARC1; p=quarantine; rua=mailto:postmaster@website.com
- v=DMARC1: The version of DMARC (required)
- p=quarantine The DMARC policy (quarantine = move to the spam folder)
- rua=mailto:postmaster@website.com An optional tag. In this case, aggregate reports will be sent to the email specified

## Secure/Multipurpose Internet Mail Extensions (S/MIME) 
This is a standard protocol for sending digitally signed and encrypted messages. It is based on public key cryptography, where the private key is never shared and the public key can be distributed openly. The two main components and security features of S/MIME are:

#### Digital Signature

The sender signs the message with their private key, the recepient verifies the sender's identity using the sender's public key. This security feature provides:

- Authentication: Confirms the sender's identity through their digital certificate
- Non-repudiation: Ensures the sender cannot deny sending the message
- Data Integrity: Detects any changes to the message after it's signed

#### Encryption

The sender encrypts the message using the recipient's public key, allowing only the recipient to decrypt it with their private key. This security feature provides:

- Confidentiality: Keeps the content private and readable only by the intended recipient