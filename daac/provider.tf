terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 2.1"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2.0"
    }
  }
  backend "s3" {}
}

provider "aws" {
  default_tags {
    tags = local.default_tags
  }
  ignore_tags {
    key_prefixes = ["gsfc-ngap"]
  }
}
