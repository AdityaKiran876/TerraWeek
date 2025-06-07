# 🌱 Terraweek Challenge - Day 1

Welcome to **Day 1** of the Terraweek Challenge! Below are answers to foundational questions about Terraform, corrected for clarity and technical accuracy.

---

## 📘 1. What is Terraform and how can it help you manage infrastructure as code?

Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It enables you to define, provision, and manage infrastructure using a declarative configuration language called **HCL (HashiCorp Configuration Language)**.

Instead of manually creating infrastructure through a cloud provider's UI, Terraform lets you write a **blueprint** of your infrastructure in code. This allows for:
- Automation
- Version control
- Reusability
- Easier collaboration

---

## 📘 2. Why do we need Terraform and how does it simplify infrastructure provisioning?

We use Terraform to define and manage infrastructure in a consistent and automated way. It simplifies infrastructure provisioning by allowing us to:

- Write infrastructure as code and store it in version control
- Reuse and scale environments easily
- Avoid manual steps through automation
- Add, change, or remove resources by modifying the code

With Terraform, infrastructure changes become predictable, repeatable, and easily reversible.

---

# 📘 4. Important Terraform Terminologies

Understanding these key Terraform concepts is essential for working effectively with Infrastructure as Code (IaC).

---

## 1. Infrastructure as Code (IaC)

Writing infrastructure configurations in code instead of manually setting it up. Terraform uses **HCL (HashiCorp Configuration Language)** to declare resources in a human-readable and machine-executable format.

---

## 2. Infrastructure Provisioning

The process of setting up infrastructure components such as servers, databases, storage, and networking in a cloud environment. Terraform automates and simplifies this process.

---

## 3. Providers

Providers are plugins that enable Terraform to interact with various cloud platforms and services such as **AWS**, **Azure**, and **GCP**. Providers define which resources Terraform can manage.

---

## 4. `terraform init`

This command initializes the working directory containing Terraform configuration files. It:
- Downloads and installs the necessary provider plugins
- Sets up the backend configuration for state management

---

## 5. Attributes

Attributes are the properties or settings of a resource defined in a Terraform configuration.  
For example, an AWS EC2 instance may have attributes like:
- `ami`
- `instance_type`
- `tags`

These attributes define how the resource will be created and behave.

## 📘 3. How can you install Terraform and set up the environment for AWS, Azure, or GCP?

### 🔧 Installing Terraform on Ubuntu/Linux:

```bash
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform
terraform --version


---
