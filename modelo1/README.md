## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.69.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.69.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_route53_record.record](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_route53_zone.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |
| [aws_subnet.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_release"></a> [ami\_release](#input\_ami\_release) | Número da versão da release da AMI | `string` | `"v0.7.2"` | no |
| <a name="input_az"></a> [az](#input\_az) | Availability zone da AWS | `string` | `"us-east-2a"` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | Nome do host | `string` | `"hostname"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Tipo de instância EC2 | `string` | `"t3.micro"` | no |
| <a name="input_internal_domain"></a> [internal\_domain](#input\_internal\_domain) | Domínio interno | `string` | `"internal.gomex.me."` | no |
| <a name="input_record_ttl"></a> [record\_ttl](#input\_record\_ttl) | TTL registro DNS no route53 | `string` | `"10"` | no |
| <a name="input_record_type"></a> [record\_type](#input\_record\_type) | Tipo do registro DNS no route53 | `string` | `"A"` | no |
| <a name="input_root_block_device_delete_on_termination"></a> [root\_block\_device\_delete\_on\_termination](#input\_root\_block\_device\_delete\_on\_termination) | Se o volume deve ser destruído quando a instância é destruída | `bool` | `true` | no |
| <a name="input_root_block_device_volume_size"></a> [root\_block\_device\_volume\_size](#input\_root\_block\_device\_volume\_size) | Tamanho do volume root do EBS | `string` | `"8"` | no |
| <a name="input_root_block_device_volume_type"></a> [root\_block\_device\_volume\_type](#input\_root\_block\_device\_volume\_type) | Tipo do volume root do EBS | `string` | `"gp2"` | no |
| <a name="input_sg_group_rule"></a> [sg\_group\_rule](#input\_sg\_group\_rule) | Regras do Security Group | `map` | `{}` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Nome da subnet | `list` | <pre>[<br>  "descomplicando"<br>]</pre> | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | Security Group ID | `list(string)` | <pre>[<br>  "sg-0ade73fdb498a6b47"<br>]</pre> | no |

## Outputs

No outputs.
