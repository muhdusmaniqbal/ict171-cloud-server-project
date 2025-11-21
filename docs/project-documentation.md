# ICT171 Cloud Server Project – Full Documentation  
Personal Budget Tracker – Azure Linux Web Server

---

# 1. Introduction

This document provides complete technical documentation for creating, configuring,  
deploying, and securing a cloud web server running on **Microsoft Azure**.

The server hosts a **Personal Budget Tracker** website using:
- Ubuntu 24.04 LTS  
- Nginx  
- GoDaddy DNS  
- SSL via Certbot (Let’s Encrypt)  

This documentation is written so any ICT171 student could replicate the entire setup  
from scratch.

---

# 2. Azure VM Creation (IaaS)

## 2.1 VM Setup

1. Log in to the Azure Portal  
2. Create a new Resource Group  
3. Select:  
   - **Virtual Machine → Create Azure VM**  
   - OS: **Ubuntu Server 24.04 LTS**  
   - Size: Standard B1s or B1ms  
   - Authentication: Password  
   - Open inbound ports: **22, 80, 443**

**Screenshot:** 
<img width="600" height="659" alt="image" src="https://github.com/user-attachments/assets/f11a69c1-cba4-46f5-8217-5975886cc909" /> 
<img width="626" height="386" alt="image" src="https://github.com/user-attachments/assets/e1700e94-896a-494b-a25f-5247c8b84e0a" />
<img width="494" height="545" alt="image" src="https://github.com/user-attachments/assets/b241de20-2c26-4b8e-a45f-635e822f165e" />

## 2.2 Networking

Ensure your Network Security Group contains:

| Priority | Port | Protocol | Action |
|----------|-------|----------|--------|
|   300   |   22 |     TCP |    Allow |
|   320   |   80 |     TCP |    Allow |
|   340   |  443 |     TCP |    Allow |

**Screenshot:** *NSG Inbound Rules*
<img width="1608" height="154" alt="image" src="https://github.com/user-attachments/assets/90c81906-36b2-4dee-bec3-f472a56e4f68" />
Azure will automatically assign priority

---

# 3. SSH Access

From your local machine:

```bash
ssh usman@135.232.96.6
