module "zone" {
  count = var.zone == null ? 0 : 1

  source = "./modules/zone"

  account_id = var.zone.account_id
  paused     = var.zone.paused
  plan       = var.zone.plan
  type       = var.zone.type
  zone       = var.zone.name
}

module "record" {
  for_each = var.records

  source = "./modules/record"

  records     = try(each.value.records, [])
  records_caa = try(each.value.records_caa, [])
  records_srv = try(each.value.records_srv, [])
  zone_id     = each.value.zone_id
  zone_name   = try(each.value.zone_name, null)
}

module "rulesets" {
  for_each = var.rulesets

  source = "./modules/firewall/modules/rulesets"

  description = each.value.description
  enabled     = try(each.value.enabled, true)
  kind        = each.value.kind
  name        = each.value.name
  phase       = each.value.phase
  rules       = try(each.value.rules, [])
  zone_id     = each.value.zone_id
}

module "firewall" {
  for_each = var.firewall_rules

  source = "./modules/firewall/modules/firewall"

  enabled = try(each.value.enabled, true)
  rules   = try(each.value.rules, null)
  zone_id = each.value.zone_id
}

module "ip_list" {
  for_each = var.ip_lists

  source = "./modules/firewall/modules/ip-list"

  account_id  = each.value.account_id
  description = try(each.value.description, null)
  enabled     = try(each.value.enabled, true)
  ips         = try(each.value.ips, [])
  kind        = try(each.value.kind, "ip")
  name        = each.value.name
}

module "page_rules" {
  for_each = var.page_rules

  source = "./modules/firewall/modules/page-rules"

  enabled = try(each.value.enabled, true)
  rules   = try(each.value.rules, null)
  zone_id = each.value.zone_id
}
