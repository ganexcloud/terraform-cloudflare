resource "cloudflare_ruleset" "this" {
  count = var.enabled ? 1 : 0

  description = var.description
  kind        = var.kind
  name        = var.name
  phase       = var.phase
  rules       = var.rules
  zone_id     = var.zone_id
}
