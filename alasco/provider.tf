provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket  = "alasco-bucket"
    key     = "alasco-tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
