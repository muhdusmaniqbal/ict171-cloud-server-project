# ICT171 Cloud Server Project – Personal Budget Tracker

**Student Name:** Muhammad Usman Iqbal  
**Student Number:** 35544407
**Unit:** ICT171 – Introduction to Server Environments and Architectures  
**Domain:** https://personalbudgetstracker.com  
**Public IP:** 135.232.96.6  


---

##  Project Overview

In this project, a cloud-based web server is adopted based on **Microsoft Azure (IaaS)**.
The server is addressing the **Ubuntu 24.04 LTS** version, and a **custom Personal Budget Tracker** site is developed on it.
and is publicly available via a **GoDaddy domain name**, which has its security configured with an SSL/TLS.
Let's Encrypt / Certbot.

The project demonstrates skills in:
- Cloud server deployment  
- Linux command-line administration  
- Web server configuration (Nginx)  
- DNS configuration  
- SSL certificate installation  
- Bash scripting  
- Technical documentation  

---

##  Documentation

All full-length documentation is contained in:  
 [`docs/project-documentation.md`](docs/project-documentation.md)

This includes:
- Azure VM creation  
- SSH configuration  
- System updates  
- Installing & configuring Nginx  
- Deploying the website  
- Domain setup (GoDaddy DNS)  
- SSL setup with Certbot  
- Testing & verification  
- Backup script (`backup_web.sh`)  

---

##  Live Server

| Resource | Link |
|----------|------|
| **Live Website (HTTPS)** | https://personalbudgetstracker.com |
| **Public IP Address** | 135.232.96.6 |

---

##  Video Explainer

A complete walkthrough of the server implementation from start to finish.

 **Video Link:** 

---

## 🛠 Backup Script

A Bash script (`backup_web.sh`) used to create timestamped backups of  
`/var/www/html`:

- Located in `scripts/backup_web.sh`
- Fully commented
- Explained in the documentation
- Verifiable through generated backup files

---

##  License

This project is licensed under the **MIT License**.  
See the `LICENSE` file for details.

---

##  References Used

- Nginx Official Documentation  
- Certbot / Let’s Encrypt Documentation  
- Azure VM documentation  
- Linux man pages for bash, tar, systemctl
