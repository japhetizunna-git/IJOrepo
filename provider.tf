terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use latest stable major version
    }
  }
}

# AWS Provider block
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  # Optional: Enable default tags for all resources
  default_tags {
    tags = {
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}