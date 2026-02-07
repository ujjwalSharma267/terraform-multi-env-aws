# Terraform Multi-Environment AWS Infrastructure Project

## 📌 Project Overview
This project is built as part of my Terraform upskilling journey to gain hands-on experience in designing, managing, and maintaining **production-style AWS infrastructure using Infrastructure as Code (IaC)**.

The focus of this project is **multi-environment infrastructure**, proper **state management**, **modular design**, and **security best practices** using Terraform.

---

## 🎯 Objectives
- Learn and implement Terraform fundamentals deeply
- Design infrastructure for multiple environments (dev, staging, prod)
- Understand Terraform backend, state files, and locking
- Apply real-world Terraform best practices
- Create a portfolio-ready DevOps project

---

## 🏗️ Architecture Overview
Each environment (dev / stg / prod) is logically isolated and has:
- Its own **Terraform state**
- Dedicated **S3 bucket** for remote backend
- Dedicated **DynamoDB table** for state locking
- Reusable Terraform modules

This ensures:
- No state conflicts
- Safe concurrent Terraform usage
- Environment-level isolation

---

## 🧰 Technologies Used
- **Terraform**
- **AWS**
  - EC2
  - S3
  - DynamoDB
  - IAM
- Remote Backend (S3 + DynamoDB)
- Git & GitHub

---

## 📂 Project Structure

Commands to run :
terraform init → initializes backend & providers

terraform plan → previews infrastructure changes

terraform apply → provisions AWS resources
