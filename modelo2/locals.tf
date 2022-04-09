locals {
    record_type = "A"
    record_ttl = 10
    hostname = var.name
    internal_domain = "internal.gomex.me"
    tipo = {
        banco = {
            instance_type   = "t3.small"
            az = "us-east-1a"
            root_block_device_volume_size = "100"
            root_block_device_volume_type = "gp2"
            root_block_device_delete_on_termination = true
            ami_release = "v0.7.2"
            subnet_name = ["descomplicando"]
            sg_group_rule = {
                banco = {
                    cidr_blocks   = ["0.0.0.0/0"]
                    port       = "5432"
                    protocol   = "tcp"
                }
            }
        },
        web = {
            instance_type   = "t3.small"
            az = "us-east-1b"
            root_block_device_volume_size = "10"
            root_block_device_volume_type = "gp2"
            root_block_device_delete_on_termination =  true
            ami_release = "v0.7.2"
            subnet_name = ["descomplicando"]
            sg_group_rule = {
                web = {
                    cidr_blocks   = ["0.0.0.0/0"]
                    port       = "80"
                    protocol   = "tcp"
                }
            }
        }
    }
}