provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "alasco-ghost"
    key     = "terraform/state"
    region  = "us-east-1"
    encrypt = true
  }
}