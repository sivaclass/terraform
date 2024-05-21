terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
  backend "s3" {
    bucket  = "sri76s-aws"
    key      = "terraform-remotestate"
    region   = "us-east-1"
    dynamodb_table = "dynomodb_s3bucket"
}
}
provider "aws" {
  region = "us-east-1"
}