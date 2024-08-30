variable "vpc_id" {
  description = "ID of the VPC."
  type        = string
}

variable "security_group_id" {
  description = "ID of the Security Group."
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ALB."
  type        = list(string)
}

variable "alb_name" {
  description = "Name of the Application Load Balancer."
  type        = string
}

variable "target_group_name" {
  description = "Name of the target group."
  type        = string
}
