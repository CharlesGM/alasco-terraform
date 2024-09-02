# Terraform ECS Deployment

This repository contains Terraform configurations for deploying an ECS cluster on AWS. The configurations are modularized for better structure and maintainability. The setup includes VPC, subnets, security groups, IAM roles, ALB, and ECS configurations.

## Directory Structure

- `alasco/` - Main Terraform configuration directory.
  - `main.tf` - Main Terraform file for setting up ECS and related resources.
  - `modules/` - Contains Terraform modules for various components.
    - `alb/` - ALB module.
    - `ecs/` - ECS module.
    - `iam_role/` - IAM roles module.
    - `internet_gateway/` - Internet Gateway module.
    - `route_table/` - Route Table module.
    - `security_group/` - Security Groups module.
    - `subnets/` - Subnets module.
    - `vpc/` - VPC module.
  - `outputs.tf` - Outputs from the main configuration.
  - `provider.tf` - Provider configuration.
  - `terraform.tfvars` - Variables for Terraform configuration.
  - `variables.tf` - Variables used in the Terraform configuration.

- `s3/` - Configuration for S3 backend.
  - `outputs.tf` - Outputs related to the S3 backend.
  - `providers.tf` - Provider configuration for the S3 backend.
  - `s3-backend.tf` - S3 backend configuration for Terraform state.
  - `terraform.tfvars` - Variables for S3 backend configuration.
  - `variables.tf` - Variables used in the S3 backend configuration.

## Setup

1. **Clone the repository:**

    git clone https://github.com/CharlesGM/alasco-terraform.git \
    cd terraform-ecs


2. **Initialize Terraform:**

    terraform init

3. **Apply Terraform configuration:**

    terraform apply

4. **Destroy Terraform configuration:**

To destroy the Terraform-managed infrastructure, you need to add destroy to the Terraform apply command:

    terraform  destroy

## GitHub Actions Workflow

The GitHub Actions workflow automates the process of building and deploying the Docker image to ECS. It is triggered whenever the alasco/terraform.tfvars file is updated with a new image tag.

- The GitHub Actions workflow is triggered on changes to alasco/terraform.tfvars to ensure that updates to image tags are applied automatically.
- To trigger a destroy action, you need to set the destroy variable to true in github actions console.

### Github secrets
- To deploy on terraform using github actions, this repo needs two secrets to be set in Github:

  1. aws-access-key-id: set as *AWS_ACCESS_KEY_ID* and referenced in the workflow as {{ secrets.AWS_ACCESS_KEY_ID }}
  2. aws-secret-access-key: set as *AWS_SECRET_ACCESS_KEY* and referenced in the workflow as ${{ secrets.AWS_SECRET_ACCESS_KEY }}

## Access the application
To access the application, use the AWS-provided DNS and append port 8080. For example: *alasco-alb-.<region>.elb.amazonaws.com:8080*

## Contributing
Feel free to open issues or submit pull requests if you have suggestions or improvements!
