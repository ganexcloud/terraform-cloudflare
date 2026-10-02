locals {
  page_rules = var.enabled && var.rules != null ? { for rule in flatten(var.rules) : rule.target => rule } : {}
}

resource "cloudflare_page_rule" "this" {
  for_each = local.page_rules

  actions  = each.value.actions
  priority = try(each.value.priority, null)
  # Provider v3/v4 defaulted status to "active"; v5 defaults to "disabled".
  status  = try(each.value.status, "active")
  target  = each.value.target
  zone_id = var.zone_id
}
