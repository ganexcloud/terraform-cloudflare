# terraform-cloudflare

Módulo Terraform consolidado para recursos Cloudflare gerenciados pela Ganex.

## Compatibility

Requires Terraform 1.6.0 or later and Cloudflare provider 5.25.0 up to, but not including, 6.0.0.

Legacy consumers migrate to public submodules, preserving their module label. Every consumer must run `terraform init -upgrade`, `terraform validate`, `terraform plan -out=tfplan` and `terraform show -json tfplan` before any apply.

`managed-rules` is intentionally not published. The legacy WAF package, group and rule resources have no state-safe successor. New Managed Rules configurations use the `rulesets` submodule at phase `http_request_firewall_managed`.

## Public submodules

- `//modules/zone`
- `//modules/record`
- `//modules/firewall/modules/rulesets`
- `//modules/firewall/modules/firewall`
- `//modules/firewall/modules/ip-list`
- `//modules/firewall/modules/page-rules`

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 5.25.0, < 6.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_firewall"></a> [firewall](#module\_firewall) | ./modules/firewall/modules/firewall | n/a |
| <a name="module_ip_list"></a> [ip\_list](#module\_ip\_list) | ./modules/firewall/modules/ip-list | n/a |
| <a name="module_page_rules"></a> [page\_rules](#module\_page\_rules) | ./modules/firewall/modules/page-rules | n/a |
| <a name="module_record"></a> [record](#module\_record) | ./modules/record | n/a |
| <a name="module_rulesets"></a> [rulesets](#module\_rulesets) | ./modules/firewall/modules/rulesets | n/a |
| <a name="module_zone"></a> [zone](#module\_zone) | ./modules/zone | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firewall_rules"></a> [firewall\_rules](#input\_firewall\_rules) | Map of legacy firewall rule module configurations keyed by logical name. | `map(any)` | `{}` | no |
| <a name="input_ip_lists"></a> [ip\_lists](#input\_ip\_lists) | Map of account IP list module configurations keyed by logical name. | `map(any)` | `{}` | no |
| <a name="input_page_rules"></a> [page\_rules](#input\_page\_rules) | Map of page rule module configurations keyed by logical name. | `map(any)` | `{}` | no |
| <a name="input_records"></a> [records](#input\_records) | Map of record module configurations keyed by logical name. | `map(any)` | `{}` | no |
| <a name="input_rulesets"></a> [rulesets](#input\_rulesets) | Map of Ruleset module configurations keyed by logical name. | `map(any)` | `{}` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Optional basic zone configuration for the consolidated root module. | <pre>object({<br/>    account_id = string<br/>    name       = string<br/>    paused     = optional(bool, false)<br/>    plan       = optional(string, "free")<br/>    type       = optional(string, "full")<br/>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_firewall_rule_ids"></a> [firewall\_rule\_ids](#output\_firewall\_rule\_ids) | Legacy firewall rule IDs keyed by root input key. |
| <a name="output_ip_lists"></a> [ip\_lists](#output\_ip\_lists) | IP list module outputs keyed by root input key. |
| <a name="output_page_rule_targets_to_ids"></a> [page\_rule\_targets\_to\_ids](#output\_page\_rule\_targets\_to\_ids) | Page rule IDs keyed by root input key. |
| <a name="output_records"></a> [records](#output\_records) | Record module outputs keyed by root input key. |
| <a name="output_rulesets"></a> [rulesets](#output\_rulesets) | Ruleset module outputs keyed by root input key. |
| <a name="output_zone"></a> [zone](#output\_zone) | Zone module outputs when root zone configuration is provided. |
<!-- END_TF_DOCS -->
