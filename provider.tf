terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.63.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-southeast-1"
  profile = "sandbox"
  
}