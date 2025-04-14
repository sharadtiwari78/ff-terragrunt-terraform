locals {
    aws_region = "us-east-2"
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

provider "aws" {
  region = "${local.aws_region}"
  profile = "factorfox"
  assume_role {
    role_arn     = "arn:aws:iam::071091555924:role/terraform-role"
  }
  default_tags {
    tags = {
      Terraform = "True"
    }
  }
}
EOF
}

# Configure Terragrunt to automatically store tfstate files in an S3 bucket
remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = "factorfox-terraform-tf-state"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = local.aws_region
    dynamodb_table = "factorfox-terraform-tf-state-locking"
    profile        = "factorfox"
    role_arn       = "arn:aws:iam::071091555924:role/terraform-role"
}
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}