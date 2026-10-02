# Record

Compatibility-focused DNS record module. It retains the legacy instance keys for standard, CAA and SRV record collections.

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
| [cloudflare_dns_record.caa](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |
| [cloudflare_dns_record.srv](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |
| [cloudflare_dns_record.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_records"></a> [records](#input\_records) | DNS records excluding CAA and SRV records. Optional keys include `comment` (string) and `tags` (list of strings, or a comma-separated string when records have mixed keys). | `list(any)` | `[]` | no |
| <a name="input_records_caa"></a> [records\_caa](#input\_records\_caa) | CAA records. Optional keys include `comment` (string) and `tags` (list of strings, or a comma-separated string when records have mixed keys). | `list(any)` | `[]` | no |
| <a name="input_records_srv"></a> [records\_srv](#input\_records\_srv) | SRV records. Optional keys include `comment` (string) and `tags` (list of strings, or a comma-separated string when records have mixed keys). | `list(any)` | `[]` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | DNS zone ID. | `string` | n/a | yes |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | Optional zone name used to compose SRV owner names. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->