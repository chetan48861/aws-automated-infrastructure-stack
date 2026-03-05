# 🚀 AWS Automated Infrastructure Stack (Terraform)

A professional-grade Infrastructure-as-Code (IaC) repository to provision a high-performance, multi-tier AWS environment. This project demonstrates the automation of compute and database layers using **Terraform** and **AWS Best Practices**.

## 🛠️ Tech Stack & Architecture
- **Cloud Provider:** AWS (Region: us-east-1)
- **IaC Tool:** Terraform v1.x
- **Compute:** EC2 Ubuntu 24.04 LTS (Noble Numbat)
- **Instance Family:** `t3.micro` (Leveraging the AWS Nitro System)
- **Database:** DynamoDB (NoSQL) with Pay-Per-Request billing
- **Security:** Integrated Security Groups for hardened SSH access



## ✨ Key Technical Features
- **Dynamic AMI Selection:** Uses Terraform `data` sources to automatically fetch the latest official Ubuntu 24.04 AMI, ensuring the OS is always up-to-date with security patches.
- **Decoupled Configuration:** Utilizes `variables.tf` for environment portability, allowing for easy transitions between Dev, Staging, and Production.
- **Automated Outputs:** Configured `outputs.tf` to surface critical data like Public IPs and Instance IDs directly to the CLI for CI/CD integration.
- **State Security:** Implemented a robust `.gitignore` to prevent sensitive Terraform state files and private keys from being exposed to Version Control.

## 🚀 How to Deploy

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/chetan48861/aws-automated-infrastructure-stack.git](https://github.com/chetan48861/aws-automated-infrastructure-stack.git)
   cd aws-automated-infrastructure-stack
