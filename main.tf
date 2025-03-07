terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-7thMarch"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}