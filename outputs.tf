output "zone" {
  description = "Zone module outputs when root zone configuration is provided."
  value       = try(module.zone[0], null)
}

output "records" {
  description = "Record module outputs keyed by root input key."
  value       = module.record
}

output "rulesets" {
  description = "Ruleset module outputs keyed by root input key."
  value       = module.rulesets
}

output "firewall_rule_ids" {
  description = "Legacy firewall rule IDs keyed by root input key."
  value       = { for key, value in module.firewall : key => value.firewall_rule_ids }
}

output "ip_lists" {
  description = "IP list module outputs keyed by root input key."
  value       = module.ip_list
}

output "page_rule_targets_to_ids" {
  description = "Page rule IDs keyed by root input key."
  value       = { for key, value in module.page_rules : key => value.page_rule_targets_to_ids }
}
