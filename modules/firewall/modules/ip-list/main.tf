resource "cloudflare_list" "this" {
  count = var.enabled ? 1 : 0

  account_id  = var.account_id
  description = var.description
  items       = [for item in var.ips : { ip = item.ip, comment = try(item.comment, null) }]
  kind        = var.kind
  name        = var.name
}
