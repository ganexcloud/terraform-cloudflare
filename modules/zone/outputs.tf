output "this_id" {
  description = "The zone ID."
  value       = cloudflare_zone.this.id
}

output "this_name_servers" {
  description = "Cloudflare-assigned name servers."
  value       = cloudflare_zone.this.name_servers
}

output "this_plan" {
  description = "The Cloudflare rate plan ID assigned to the zone."
  value       = cloudflare_zone_subscription.this.rate_plan.id
}
