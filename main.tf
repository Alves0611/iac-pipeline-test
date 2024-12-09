terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket  = "tfstate-637423199942"
    key     = "homolog/frontend/test"
    region  = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

# resource "aws_s3_bucket" "frontend_bucket" {
#   bucket        = "droz-bot-000-frontend-bucket"
#   force_destroy = true

#   tags = {
#     Environment = "homolog"
#   }
# }


