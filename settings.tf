terraform {
  required_version = "~> 1.0"  // this ensures the version is between 1.0 ~ 1.9
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"            # Optional but recommended in production
    }
  }
}