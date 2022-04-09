resource "aws_instance" "main" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = ["${aws_security_group.main.id}"]
  subnet_id     = data.aws_subnet.main.id
  metadata_options {
     http_tokens = "required"
  }
  root_block_device {
      encrypted = true
  }


  root_block_device {
    volume_type = var.root_block_device_volume_type
    volume_size = var.root_block_device_volume_size
    delete_on_termination = var.root_block_device_delete_on_termination
    encrypted = true
    tags = {
      instance = var.hostname
    }
  }


  tags = {
    Name = var.hostname
  }
  user_data = <<EOF
#!/bin/bash
sudo hostnamectl set-hostname ${var.hostname}
EOF
}
