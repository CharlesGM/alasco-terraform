variable "vpc_id" {
  description = "ID of the VPC."
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block of the VPC."
  type        = string
}

variable "subnet_count" {
  description = "Number of subnets to create."
  type        = number
}
