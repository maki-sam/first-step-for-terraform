terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.63.1"
    }
  }
}

provider "aws" {
  # Configuration options
  profile = "makisam"
  region  = "ap-southeast-1"
  default_tags {
    tags = {
      "The-Art-By" = "Makisam"
    }
  }

}
