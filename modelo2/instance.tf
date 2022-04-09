resource "aws_instance" "main" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.tipo[var.tipo].instance_type
  vpc_security_group_ids = ["${aws_security_group.main.id}"]
  subnet_id     = data.aws_subnet.main.id

  root_block_device {
    volume_type = local.tipo[var.tipo].root_block_device_volume_type
    volume_size = local.tipo[var.tipo].root_block_device_volume_size
    delete_on_termination = local.tipo[var.tipo].root_block_device_delete_on_termination
    tags = {
      instance = local.hostname
    }
  }


  tags = {
    Name = local.hostname
  }
  user_data = <<EOF
#!/bin/bash
sudo hostnamectl set-hostname ${local.hostname}
EOF
}
