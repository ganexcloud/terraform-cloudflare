# IP list

Successor for the legacy IP List module using `cloudflare_list`.

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
| [cloudflare_list.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/list) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Account ID. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | List description. | `string` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether to create the IP list. | `bool` | `true` | no |
| <a name="input_ips"></a> [ips](#input\_ips) | IP list items. | `list(any)` | `[]` | no |
| <a name="input_kind"></a> [kind](#input\_kind) | List kind. | `string` | `"ip"` | no |
| <a name="input_name"></a> [name](#input\_name) | List name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Cloudflare list ID. |
<!-- END_TF_DOCS -->