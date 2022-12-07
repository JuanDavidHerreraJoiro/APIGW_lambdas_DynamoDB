terraform {
  required_version = "1.3.4"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
  access_key = ""
  secret_key = ""

  default_tags {
    tags = {
      Project   = "API GW + LAMBDA + DYNAMO_DB + TERRAFORM -- IaC"
      CreatedAt = "2022-12-06"
      ManagedBy = "Terraform"
      Owner     = "Juan David Herrera Joiro"
      Env       = var.env
    }
  }
}
