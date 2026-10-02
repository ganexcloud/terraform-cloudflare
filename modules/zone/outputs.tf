output "this_id" {
  description = "The zone ID."
  value       = cloudflare_zone.this.id
}

output "this_name_servers" {
  description = "Cloudflare-assigned name servers."
  value       = cloudflare_zone.this.name_servers
}

output "this_plan" {
  description = "The Cloudflare rate plan ID assigned to the zone. Falls back to var.plan when subscription_enabled is false."
  value       = try(cloudflare_zone_subscription.this[0].rate_plan.id, var.plan)
}
