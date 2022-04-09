provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-aula-ao-vivo"
    key    = "iac-test"
    region = "us-east-1"
  }
}