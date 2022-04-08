terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74" # Optional but recommended in production
    }
  }
  backend "s3" {
    bucket         = "ecs-app-devops-tfstate"
    key            = "recipe-app.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "recipe-app-api-devops-tf-state-lock"
  }
}

provider "aws" {
  region = "eu-west-1"
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    Owner       = var.contact
    ManagedBy   = "Terraform"
  }
}

data "aws_region" "current" {

}