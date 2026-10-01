# Rulesets

Ruleset Engine module. Use `http_request_firewall_managed` with `skip` or `execute` rules for WAF Managed Rules.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 5.25.0, < 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >= 5.25.0, < 6.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_ruleset.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/ruleset) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Ruleset description. | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether to create the ruleset. | `bool` | `true` | no |
| <a name="input_kind"></a> [kind](#input\_kind) | Ruleset kind. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Ruleset name. | `string` | n/a | yes |
| <a name="input_phase"></a> [phase](#input\_phase) | Ruleset phase. | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | Ruleset rule objects. | `list(any)` | `[]` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Zone ID. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->