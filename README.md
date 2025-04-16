# Terraform S3 Backend with Native Locking

This project demonstrates how to set up **Terraform remote backend using AWS S3 with native state locking using DynamoDB**, following best practices for secure and collaborative Terraform workflows.

## 🔍 Project Overview

This setup is broken into two major steps:

### 📁 step1-bootstrap
This folder contains the Terraform code to **bootstrap the backend**:
- Creates an S3 bucket for remote state storage
- Enables versioning
- Sets up a DynamoDB table for state locking
- Blocks public access to the bucket

> 🛠️ This step should be run locally to establish the backend before switching to remote state.

---

### 📁 step2-use-lockfile
This folder contains Terraform configuration that:
- Uses the backend created in step1
- Demonstrates how state is managed and locked automatically
- Showcases backend configuration with `backend "s3" {...}` block
- Uploads a sample object (e.g., image) to the S3 bucket

> 💡 Native locking is automatically handled by the DynamoDB table — this is critical for team environments to avoid state corruption.

---

## ✅ What This Project Conveys

- Importance of **remote backends** for state consistency
- Using **S3 + DynamoDB** for a scalable and lock-safe setup
- Following **Terraform best practices** by separating bootstrapping logic
- Handling **Terraform file structure** properly to avoid checking in `.terraform` or provider binaries
- How to clean Git history and avoid committing large provider files accidentally

---

## 🚀 Future Enhancements

- Implement this pattern using **Terraform Cloud** or **Workspaces**
- Extend to **multi-environment setup** (dev, staging, prod)
- Use **CI/CD pipeline** to apply infrastructure automatically

---

## 🧠 Notes

If you’re cloning this repo:
- Always run `terraform init` in each step folder
- Be sure you’ve uploaded any referenced files (like `image.png`) before applying
- Do **NOT** commit `.terraform` directories or large binaries

---

## 👨‍💻 Author

**Bheemender Gurram**  
Cloud & DevOps Enthusiast | MS in CS  
[LinkedIn](https://www.linkedin.com/in/bheemendergurram) | [GitHub](https://github.com/Bheemender1998)
