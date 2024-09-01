provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket  = "alasco-ghost"
    key     = "alasco-ecs-state"
    region  = "us-east-1"
    encrypt = true
  }
}
