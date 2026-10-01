# Firewall

Compatibility-focused module for legacy Firewall Rules API resources. The provider warns that the API is deprecated; do not remodel an existing consumer without a reviewed migration plan.

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
| [cloudflare_firewall_rule.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/firewall_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether to create firewall rules. | `bool` | `true` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | Legacy firewall rule objects. | `list(any)` | `null` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Zone ID. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_firewall_rule_ids"></a> [firewall\_rule\_ids](#output\_firewall\_rule\_ids) | Firewall rule IDs. |
<!-- END_TF_DOCS -->