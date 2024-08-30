variable "aws_region" {
  description = "The AWS region to deploy resources in."
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
}

variable "subnet_count" {
  description = "Number of subnets to create."
  type        = number
  default     = 2 # Adjust the default as needed
}

variable "container_image" {
  description = "Docker image for the ECS container."
  type        = string
}

variable "alb_name" {
  description = "The Name of the ALB."
}

variable "execution_role_arn" {
  description = "ARN of the ECS task execution role."
  type        = string
}

variable "task_role_arn" {
  description = "ARN of the ECS task role."
  type        = string
}

variable "cluster_name" {
  description = "Name of cluster."
  type        = string
}

variable "task_family" {
  description = "Name of task family."
  type        = string
}

variable "service_name" {
  description = "Name of Service."
  type        = string
}

variable "target_group_name" {
  description = "Name of the Target Group."
  type        = string
}
