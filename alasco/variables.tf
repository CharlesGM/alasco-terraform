variable "aws_region" {
  description = "The AWS region to deploy resources in."
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
}

variable "subnet_count" {
  description = "Number of subnets to create."
  type        = number
  default     = 2
}

variable "container_image" {
  description = "Docker image for the ECS container."
  type        = string
}

variable "alb_name" {
  description = "The Name of the ALB."
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
