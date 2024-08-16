# Terraform AWS S3 Static Website

This repository contains Terraform code to host a static website on AWS S3. The code is structured to follow best practices, including the use of variables, state management with an S3 backend, and modular configuration.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Commands](#commands)
- [Cleanup](#cleanup)

## Prerequisites

Before you begin, ensure you have the following:

1. **Terraform** installed on your local machine. [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. **AWS CLI** installed and configured with your credentials. [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
3. An **AWS account** with permissions to create S3 buckets and manage Terraform state.

## Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Abrar-Akbar/terraform-aws-static-website.git
   cd terraform-aws-static-website
  ```
## Usage
   ```bash
   terraform init
   terraform validate
   terraform plan
   terraform apply
  ```
## Cleanup
   ```bash
   terraform destroy -var="bucket_name=your-unique-bucket-name"
 
  ```
