terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.75.2"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  backend "s3" {}
}

provider "aws" {
  ignore_tags {
    key_prefixes = ["gsfc-ngap"]
  }
}