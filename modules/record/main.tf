locals {
  recordsets     = { for rs in var.records : join(" ", compact([rs.name, rs.type, try(rs.resource_name_suffix, "")])) => rs }
  recordsets_caa = { for rs in var.records_caa : join(" ", compact([rs.name, "caa", try(rs.resource_name_suffix, "")])) => rs }
  recordsets_srv = { for rs in var.records_srv : join(" ", compact([rs.name, "srv", try(rs.resource_name_suffix, "")])) => rs }
}

resource "cloudflare_dns_record" "this" {
  for_each = local.recordsets

  comment  = try(each.value.comment, null)
  content  = try(each.value.value, null)
  name     = each.value.name
  priority = try(each.value.priority, null)
  proxied  = try(each.value.proxied, false)
  tags     = try(tolist(each.value.tags), split(",", each.value.tags), null)
  ttl      = try(each.value.ttl, 1)
  type     = each.value.type
  zone_id  = var.zone_id
}

resource "cloudflare_dns_record" "caa" {
  for_each = local.recordsets_caa

  data = {
    flags = each.value.data_flags
    tag   = each.value.data_tag
    value = each.value.data_value
  }
  comment  = try(each.value.comment, null)
  name     = each.value.name
  priority = try(each.value.priority, null)
  proxied  = false
  tags     = try(tolist(each.value.tags), split(",", each.value.tags), null)
  ttl      = try(each.value.ttl, 1)
  type     = "CAA"
  zone_id  = var.zone_id
}

resource "cloudflare_dns_record" "srv" {
  for_each = local.recordsets_srv

  data = {
    name     = each.value.data_name
    port     = each.value.data_port
    priority = each.value.data_priority
    proto    = each.value.data_proto
    service  = each.value.data_service
    target   = each.value.data_target
    weight   = each.value.data_weight
  }
  name    = var.zone_name == null ? format("%s.%s", each.value.data_service, each.value.data_proto) : format("%s.%s.%s", each.value.data_service, each.value.data_proto, var.zone_name)
  comment = try(each.value.comment, null)
  proxied = false
  tags    = try(tolist(each.value.tags), split(",", each.value.tags), null)
  ttl     = try(each.value.ttl, 1)
  type    = "SRV"
  zone_id = var.zone_id
}
