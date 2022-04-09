#tfsec:ignore:aws-vpc-no-public-egress-sgr
resource "aws_security_group" "main" {
    vpc_id = data.aws_vpc.main.id
    description = "Access to internet"

    egress {
        description = "Access to internet"
        from_port   = 0
        to_port     = 0

        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
        Environment = terraform.workspace
        Hostname         = var.hostname
    }

}

resource "aws_security_group_rule" "main" {
    for_each = var.sg_group_rule
    cidr_blocks = each.value.cidr_blocks 
    from_port   = each.value.port
    to_port     = each.value.port
    description = each.key
    protocol    = each.value.protocol

    security_group_id = aws_security_group.main.id
    type = "ingress"
}

#tfsec:ignore:aws-vpc-no-public-ingress-sgr
resource "aws_security_group_rule" "ssh" {

    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "2222"
    to_port     = "2222"
    description = "Access to SSH"
    protocol    = "tcp"

    security_group_id = aws_security_group.main.id
    type = "ingress" 
}

