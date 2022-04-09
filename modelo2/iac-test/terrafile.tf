provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-aula-ao-vivo"
    key    = "iac-test-modelo2"
    region = "us-east-1"
  }
}

module "test_servers" {
  source = "../"

  tipo = "web"
  name = "testando"
}