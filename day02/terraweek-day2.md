# 🌱 Terraform Week Challenge - Day 2

## ✅ Task 2: Understand Variables, Data Types, and Expressions in HCL

### 📄 `variables.tf`
We defined various variables to understand data types and HCL expressions.

```hcl
variable "instance_type" {
  description = "This is a variable for ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Variable defined for count of instances"
  type        = number
  default     = 1
}

variable "aws_region" {
  description = "Variable to assign a region."
  type        = string
  default     = "us-east-1"
}

variable "instance_size" {
  description = "Variable for defining instance size"
  type        = number
  default     = 8
}

variable "instance_volume_type" {
  description = "Variable for defining instance volume type"
  type        = string
  default     = "gp3"
}

variable "name" {
  description = "Content of file"
  default     = "This is new content for a local file"
}
```

### 📄 `main.tf`
We used the `name` variable to create a local file resource.

```hcl
resource "local_file" "file1" {
  content  = var.name
  filename = "file1.txt"
}
```

## 📸 Output Screenshots

Below are screenshots showing successful Terraform execution:

![b967d006-09ef-4f97-9ee5-e2a3f798b15f.png](./b967d006-09ef-4f97-9ee5-e2a3f798b15f.png)

![8a40eaf5-56fe-4e17-aa4c-af5cd7bceca1.png](./8a40eaf5-56fe-4e17-aa4c-af5cd7bceca1.png)

![bdf25917-930d-4539-8dd8-b676f11afb90.png](./bdf25917-930d-4539-8dd8-b676f11afb90.png)



---

## ✅ Task 3: Writing Terraform Configurations Using HCL

### 🧩 Added `required_providers` Block

We ensured our configuration includes a `required_providers` block:

```hcl
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
```

### 🧪 Testing the Configuration

- Ran `terraform init` to install and configure providers ✅
- Verified plan using `terraform plan` ✅
- Applied configuration using `terraform apply -auto-approve` ✅

---

## ✅ Summary

- Understood how to define variables using HCL
- Learned about Terraform expressions and variable types
- Practiced creating a resource using HCL syntax
- Successfully initialized, planned, and applied a configuration using Terraform CLI

📂 File `file1.txt` was created with content:
```
This is new content for a local file
```

---

```
Project Structure:
.
├── main.tf
├── variables.tf
├── terraform.tfstate
├── terraform.tf
├── terraform.tfstate.backup
└── file1.txt
```
