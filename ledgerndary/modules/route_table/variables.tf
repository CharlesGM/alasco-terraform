variable "vpc_id" {
  description = "ID of the VPC."
  type        = string
}

variable "internet_gateway_id" {
  description = "ID of the Internet Gateway."
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs."
  type        = list(string)
}

variable "subnet_count" {
  description = "Number of subnets."
  type        = number
}