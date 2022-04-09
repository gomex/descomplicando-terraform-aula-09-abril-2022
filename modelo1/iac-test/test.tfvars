server_pool = {
    web = {
        instance_type   = "t3.small"
        az = "us-east-1a"
        ebs_enabled = true
        ebs_volume_size   = "200"
        root_block_device_volume_size = "10"
    },
}

sg_group_rule = {
    http = {
      cidr_blocks   = ["0.0.0.0/0"]
      port       = "80"
      protocol   = "tcp"
    },
    https = {
      cidr_blocks   = ["0.0.0.0/0"]
      port       = "443"
      protocol   = "tcp"
    }
} 