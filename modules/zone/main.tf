resource "cloudflare_zone" "this" {
  account = {
    id = var.account_id
  }
  name   = var.zone
  paused = var.paused
  type   = var.type
}

# Workaround for cloudflare/terraform-provider-cloudflare#7083: the subscription API returns
# 404 (code 1207) for some Free zones, so the resource can be neither imported nor read there.
# Remove subscription_enabled once the provider handles Free zones.
resource "cloudflare_zone_subscription" "this" {
  count = var.subscription_enabled ? 1 : 0

  zone_id = cloudflare_zone.this.id

  rate_plan = {
    id = var.plan
  }
}

resource "cloudflare_zone_setting" "this" {
  for_each = { for setting_id, value in local.zone_settings : setting_id => value if var.zone_settings_override_enabled }

  setting_id = each.key
  value      = each.value
  zone_id    = cloudflare_zone.this.id
}

resource "cloudflare_universal_ssl_setting" "this" {
  enabled = var.universal_ssl == "on"
  zone_id = cloudflare_zone.this.id
}
