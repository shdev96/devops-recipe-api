terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "devops-recipe-app-api-state-2"
    key            = "tf-state-setup"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "devops-recipe-app-api-tf-lock"
  }
}

provider "aws" {
  region = "ap-northeast-2"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}
