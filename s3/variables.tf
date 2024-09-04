# Define variables used in the S3 backend configuration
variable "bucket_name" {
  description = "The name of the S3 bucket for Terraform state storage"
  type        = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
}

variable "environment" {
  description = "The environment for tagging resources"
  type        = string
}
