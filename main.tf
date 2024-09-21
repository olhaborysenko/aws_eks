terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }
  backend "s3"{
      bucket = "borysenko-terraform-state"
      key    = "state/terraform.tfstate"
      region = "eu-west-1"
      shared_credentials_file = "~/.aws/credentials"
  }
  required_version = ">= 1.3"
}
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
  profile = "default"
}
