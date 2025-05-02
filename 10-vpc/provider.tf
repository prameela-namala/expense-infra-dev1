terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }


 backend "s3" {
    bucket = "prami-terraform"
    key    = "terraform-infra"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }


}

provider "aws" {
  # Configuration options

   region = "us-east-1"

}
