module "test_servers" {
  source = "../"

  for_each = var.server_pool

  hostname                 = each.key
  instance_type            = each.value.instance_type
  az                       = each.value.az
  root_block_device_volume_size   = each.value.root_block_device_volume_size
  sg_group_rule            = var.sg_group_rule
}