provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket  = "ledgerndary-bucket"
    key     = "ledgerndary-tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
