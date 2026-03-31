# OSS Audit — Git
## Open Source Software Capstone Project

**Student Name:** ananya1009
**Roll Number:** 24BCY10315
**Course:** Open Source Software (NGMC)
**Software Audited:** Git

---

## Scripts

### Script 1 — System Identity Report
Displays Linux system info: distro, kernel, user, uptime, date and OS license.
**Run:** `bash script1_system_identity.sh`

### Script 2 — FOSS Package Inspector
Checks if Git is installed, shows package details, and prints a philosophy note.
**Run:** `bash script2_package_inspector.sh`

### Script 3 — Disk and Permission Auditor
Audits key system directories for size, owner and permissions using a for loop.
**Run:** `bash script3_disk_auditor.sh`

### Script 4 — Log File Analyzer
Reads a log file, counts keyword matches and shows last 5 matching lines.
**Run:** `bash script4_log_analyzer.sh /var/log/syslog error`

### Script 5 — Manifesto Generator
Asks 3 interactive questions and generates a personal open source philosophy statement.
**Run:** `bash script5_manifesto.sh`

---

## Dependencies
- Ubuntu Linux 24.04 LTS
- Git 2.43.0
- Bash shell
- Standard Linux tools: dpkg, awk, grep, du, df

## How to Run
1. Clone this repo on a Linux system
2. Give execute permission: `chmod +x *.sh`
3. Run any script: `bash scriptN_name.sh`
