locals {
  firewall_rules = var.enabled && var.rules != null ? {
    for rule in flatten(var.rules) : format("%s-%s", rule.action, md5(rule.expression)) => rule
  } : {}
}

resource "cloudflare_firewall_rule" "this" {
  for_each = local.firewall_rules

  action = {
    mode = each.value.action
  }
  filter = {
    description = each.value.description
    expression  = each.value.expression
    paused      = try(each.value.paused, null)
    ref         = try(each.value.ref, null)
  }
  zone_id = var.zone_id
}
