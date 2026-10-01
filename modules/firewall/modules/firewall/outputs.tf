output "firewall_rule_ids" {
  description = "Firewall rule IDs."
  value       = try(values(cloudflare_firewall_rule.this)[*].id, null)
}
