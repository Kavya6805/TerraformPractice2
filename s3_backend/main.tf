provider "aws" {
    region = "ap-south-1"
}

terraform {
 backend "s3" {
    bucket = "bucket-for-terraform-backend-v5"
    key    = "production.tfstate"
    region = "ap-south-1"
    use_lockfile = "true"
  }
}

resource "aws_security_group" "prod" {
  name        = "production-sg"
}