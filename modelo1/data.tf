data "aws_vpc" "main" {
  state = "available"
}

data "aws_subnet" "main" {
  vpc_id = data.aws_vpc.main.id
  filter {
    name   = "tag:Name"
    values = var.subnet_name
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "tag:Release"
    values = ["${var.ami_release}"]
  }

  owners = ["076877705236"] # Minha conta
}