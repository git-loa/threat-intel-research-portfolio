
# **Safe Simulation Playbook**
*A collection of controlled, legal, and repeatable simulations for generating telemetry in an Elastic Stack CTI lab.*

This document outlines safe, benign activities you can run inside your lab environment to generate realistic endpoint telemetry for CTI analysis, threat hunting, detection testing, and case study development. All simulations are designed to be **non-destructive**, **ethical**, and **fully contained** within your own systems.

---

# **1. Process Execution Simulations**

These commands generate process start events, command-line arguments, and parent-child relationships.

### **Basic Commands**
```bash
echo "hello world"
whoami
id
```

### **Script Interpreter Activity**
```bash
bash -c "echo test"
python3 -c "print('hello')"
```

### **Suspicious-Looking Chains (benign)**
```bash
bash -c "python3 -c 'print(123)'"
bash -c "curl http://example.com"
```

### **Why This Matters**
- Tests process monitoring  
- Helps build ATT&CK mappings (T1059, T1059.004, T1059.006)  
- Useful for timeline reconstruction  

---

# **2. Network Activity Simulations**

These commands generate outbound network connections, DNS lookups, and HTTP requests.

### **Basic Network Calls**
```bash
curl http://example.com
wget http://example.com
ping -c 3 google.com
```

### **Rare Domain Simulation**
```bash
curl http://this-domain-should-not-exist-12345.com
```

### **Why This Matters**
- Tests DNS logging  
- Helps build hunts for rare outbound connections  
- Supports ATT&CK mapping (T1071, T1041)  

---

# **3. File Activity Simulations**

These commands generate file creation, modification, and deletion events.

### **Create Files**
```bash
echo "test" > /tmp/testfile.txt
touch ~/Documents/sample.txt
```

### **Modify Files**
```bash
echo "updated" >> /tmp/testfile.txt
```

### **Delete Files**
```bash
rm /tmp/testfile.txt
```

### **Why This Matters**
- Tests file integrity monitoring  
- Supports hunts for suspicious file paths  
- Useful for case studies involving malware-like behavior  

---

# **4. User & Privilege Simulations**

These commands generate authentication, sudo, and user-management logs.

### **Privilege Use**
```bash
sudo -l
sudo whoami
```

### **User Creation (safe in lab)**
```bash
sudo useradd testuser
sudo passwd testuser
```

### **SSH Activity**
```bash
ssh localhost
```

### **Why This Matters**
- Supports IR-style investigations  
- Helps practice privilege escalation detection  
- Maps to ATT&CK (T1078, T1068)  

---

# **5. Phishing Simulation (Benign)**

These activities simulate user behavior during phishing execution **without executing malware**.

### **Open a Harmless HTML File**
```bash
xdg-open phishing_sim.html
```

### **Download a Benign File**
```bash
curl -O http://example.com/sample.doc
```

### **Simulate Macro Execution (no macros)**
Open a `.docx` file with no macros — the telemetry still logs:

- process start  
- file access  
- user interaction  

### **Why This Matters**
- Supports phishing case studies  
- Enables timeline reconstruction  
- Helps practice Flash Briefs and RFIs  

---

# **6. Detection Rule Triggering**

Elastic has built-in rules mapped to ATT&CK. You can safely trigger some of them.

### **Example: Suspicious Network Activity**
```bash
curl http://icanhazip.com
```

### **Example: Script Interpreter Execution**
```bash
python3 -c "print('test')"
```

### **Why This Matters**
- Lets you practice alert triage  
- Enables Flash Brief creation  
- Supports detection tuning exercises  

---

# **7. Combined Simulation Scenarios**

These multi-step simulations generate rich telemetry for full case studies.

---

## **Scenario A — Suspicious Download Chain**
1. `curl http://example.com -o test.sh`  
2. `bash test.sh` (empty script)  
3. `python3 -c "print('executed')"`

**Telemetry produced:**
- Network request  
- File write  
- Script execution  
- Process chain  

---

## **Scenario B — User Behavior Anomaly**
1. Create a new user  
2. SSH into the machine  
3. Run a privileged command  

**Telemetry produced:**
- Authentication logs  
- SSH session  
- Privilege escalation attempt  

---

## **Scenario C — Phishing Execution Simulation**
1. Download a benign `.docx`  
2. Open it  
3. Trigger a network request (curl)  

**Telemetry produced:**
- File access  
- Office process start  
- Network activity  

---

# **8. Safety Guidelines**

- Only run simulations on **your own lab machines**  
- Never use real malware  
- Never connect to suspicious or malicious domains  
- Never simulate attacks on external systems  
- Keep all activity contained within your Elastic environment  

---

# **9. How to Use These Simulations in Case Studies**

Each simulation can be used to generate:

- ATT&CK mappings  
- Timeline reconstructions  
- Flash Briefs  
- RFIs  
- Intelligence estimates  
- Hybrid OSINT + telemetry case studies  

This is exactly how professional CTI teams train and validate their workflows.
