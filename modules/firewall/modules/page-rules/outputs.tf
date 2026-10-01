output "page_rule_targets_to_ids" {
  description = "Map of page rule targets to IDs."
  value       = { for rule in cloudflare_page_rule.this : rule.target => rule.id }
}
