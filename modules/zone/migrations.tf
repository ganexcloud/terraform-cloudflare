# subscription_enabled added count to cloudflare_zone_subscription (workaround for
# cloudflare/terraform-provider-cloudflare#7083); keep existing state at index 0.
moved {
  from = cloudflare_zone_subscription.this
  to   = cloudflare_zone_subscription.this[0]
}
