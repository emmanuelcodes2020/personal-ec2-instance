terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  
}



# configure the AWS provider

provider "aws" {
  region = "eu-west-2"
  default_tags {

    tags = {
      BillingID = "Service"
      Project   = "New-project"
      terraform = true
    }
  }


}