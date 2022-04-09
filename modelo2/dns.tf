data "aws_route53_zone" "selected" {
  name         = local.internal_domain
  private_zone = false
}

resource "aws_route53_record" "record" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "${local.hostname}.${data.aws_route53_zone.selected.name}"
  type    = local.record_type
  ttl     = local.record_ttl
  records = [aws_instance.main.public_ip]
}