# Zone

Compatibility-focused successor for the legacy zone module. Zone plan and settings require the migration procedure documented for each consumer state.

Some Free zones have no subscription object in the Cloudflare API: `GET /zones/{zone_id}/subscription` returns `404` with code `1207` ("Add a core subscription first"), so `cloudflare_zone_subscription` can be neither imported nor read for them ([cloudflare/terraform-provider-cloudflare#7083](https://github.com/cloudflare/terraform-provider-cloudflare/issues/7083)). For those zones set `subscription_enabled = false`; `this_plan` then returns `var.plan`. Do not let Terraform create the subscription to work around the 404. This input is a workaround and will be removed once the provider handles Free zones.

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
| [cloudflare_universal_ssl_setting.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/universal_ssl_setting) | resource |
| [cloudflare_zone.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone) | resource |
| [cloudflare_zone_setting.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_setting) | resource |
| [cloudflare_zone_subscription.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Cloudflare account ID that owns the zone. | `string` | n/a | yes |
| <a name="input_always_online"></a> [always\_online](#input\_always\_online) | n/a | `string` | `"on"` | no |
| <a name="input_always_use_https"></a> [always\_use\_https](#input\_always\_use\_https) | n/a | `string` | `"off"` | no |
| <a name="input_automatic_https_rewrites"></a> [automatic\_https\_rewrites](#input\_automatic\_https\_rewrites) | n/a | `string` | `"off"` | no |
| <a name="input_brotli"></a> [brotli](#input\_brotli) | n/a | `string` | `"on"` | no |
| <a name="input_browser_cache_ttl"></a> [browser\_cache\_ttl](#input\_browser\_cache\_ttl) | n/a | `number` | `14400` | no |
| <a name="input_browser_check"></a> [browser\_check](#input\_browser\_check) | n/a | `string` | `"on"` | no |
| <a name="input_cache_level"></a> [cache\_level](#input\_cache\_level) | n/a | `string` | `"aggressive"` | no |
| <a name="input_challenge_ttl"></a> [challenge\_ttl](#input\_challenge\_ttl) | n/a | `number` | `1800` | no |
| <a name="input_cname_flattening"></a> [cname\_flattening](#input\_cname\_flattening) | n/a | `string` | `"flatten_at_root"` | no |
| <a name="input_development_mode"></a> [development\_mode](#input\_development\_mode) | n/a | `string` | `"off"` | no |
| <a name="input_email_obfuscation"></a> [email\_obfuscation](#input\_email\_obfuscation) | n/a | `string` | `"on"` | no |
| <a name="input_h2_prioritization"></a> [h2\_prioritization](#input\_h2\_prioritization) | n/a | `string` | `"on"` | no |
| <a name="input_hotlink_protection"></a> [hotlink\_protection](#input\_hotlink\_protection) | n/a | `string` | `"off"` | no |
| <a name="input_http2"></a> [http2](#input\_http2) | n/a | `string` | `"on"` | no |
| <a name="input_http3"></a> [http3](#input\_http3) | n/a | `string` | `"on"` | no |
| <a name="input_image_resizing"></a> [image\_resizing](#input\_image\_resizing) | n/a | `string` | `"off"` | no |
| <a name="input_ip_geolocation"></a> [ip\_geolocation](#input\_ip\_geolocation) | n/a | `string` | `"on"` | no |
| <a name="input_ipv6"></a> [ipv6](#input\_ipv6) | n/a | `string` | `"on"` | no |
| <a name="input_max_upload"></a> [max\_upload](#input\_max\_upload) | n/a | `number` | `100` | no |
| <a name="input_min_tls_version"></a> [min\_tls\_version](#input\_min\_tls\_version) | n/a | `string` | `"1.0"` | no |
| <a name="input_minify"></a> [minify](#input\_minify) | n/a | `any` | <pre>{<br/>  "css": "off",<br/>  "html": "off",<br/>  "js": "off"<br/>}</pre> | no |
| <a name="input_mirage"></a> [mirage](#input\_mirage) | n/a | `string` | `"off"` | no |
| <a name="input_mobile_redirect"></a> [mobile\_redirect](#input\_mobile\_redirect) | n/a | `any` | <pre>{<br/>  "mobile_subdomain": "",<br/>  "status": "off",<br/>  "strip_uri": false<br/>}</pre> | no |
| <a name="input_opportunistic_encryption"></a> [opportunistic\_encryption](#input\_opportunistic\_encryption) | n/a | `string` | `"on"` | no |
| <a name="input_opportunistic_onion"></a> [opportunistic\_onion](#input\_opportunistic\_onion) | n/a | `string` | `"on"` | no |
| <a name="input_origin_error_page_pass_thru"></a> [origin\_error\_page\_pass\_thru](#input\_origin\_error\_page\_pass\_thru) | n/a | `string` | `"off"` | no |
| <a name="input_paused"></a> [paused](#input\_paused) | Whether the zone is paused. | `bool` | `false` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Cloudflare zone subscription rate plan ID. | `string` | `"free"` | no |
| <a name="input_polish"></a> [polish](#input\_polish) | n/a | `string` | `"off"` | no |
| <a name="input_prefetch_preload"></a> [prefetch\_preload](#input\_prefetch\_preload) | n/a | `string` | `"off"` | no |
| <a name="input_privacy_pass"></a> [privacy\_pass](#input\_privacy\_pass) | n/a | `string` | `"on"` | no |
| <a name="input_pseudo_ipv4"></a> [pseudo\_ipv4](#input\_pseudo\_ipv4) | n/a | `string` | `"off"` | no |
| <a name="input_response_buffering"></a> [response\_buffering](#input\_response\_buffering) | n/a | `string` | `"off"` | no |
| <a name="input_rocket_loader"></a> [rocket\_loader](#input\_rocket\_loader) | n/a | `string` | `"off"` | no |
| <a name="input_security_header"></a> [security\_header](#input\_security\_header) | n/a | `any` | <pre>{<br/>  "enabled": false,<br/>  "include_subdomains": false,<br/>  "max_age": 0,<br/>  "nosniff": false,<br/>  "preload": false<br/>}</pre> | no |
| <a name="input_security_level"></a> [security\_level](#input\_security\_level) | n/a | `string` | `"medium"` | no |
| <a name="input_server_side_exclude"></a> [server\_side\_exclude](#input\_server\_side\_exclude) | n/a | `string` | `"on"` | no |
| <a name="input_sort_query_string_for_cache"></a> [sort\_query\_string\_for\_cache](#input\_sort\_query\_string\_for\_cache) | n/a | `string` | `"off"` | no |
| <a name="input_ssl"></a> [ssl](#input\_ssl) | n/a | `string` | `"full"` | no |
| <a name="input_subscription_enabled"></a> [subscription\_enabled](#input\_subscription\_enabled) | Whether to manage the zone subscription. Set to false for Free zones whose subscription API returns 404 (cloudflare/terraform-provider-cloudflare#7083). | `bool` | `true` | no |
| <a name="input_tls_1_3"></a> [tls\_1\_3](#input\_tls\_1\_3) | n/a | `string` | `"on"` | no |
| <a name="input_tls_client_auth"></a> [tls\_client\_auth](#input\_tls\_client\_auth) | n/a | `string` | `"off"` | no |
| <a name="input_true_client_ip_header"></a> [true\_client\_ip\_header](#input\_true\_client\_ip\_header) | n/a | `string` | `"off"` | no |
| <a name="input_type"></a> [type](#input\_type) | Zone type. | `string` | `"full"` | no |
| <a name="input_universal_ssl"></a> [universal\_ssl](#input\_universal\_ssl) | n/a | `string` | `"on"` | no |
| <a name="input_waf"></a> [waf](#input\_waf) | n/a | `string` | `"off"` | no |
| <a name="input_webp"></a> [webp](#input\_webp) | n/a | `string` | `"off"` | no |
| <a name="input_websockets"></a> [websockets](#input\_websockets) | n/a | `string` | `"on"` | no |
| <a name="input_zero_rtt"></a> [zero\_rtt](#input\_zero\_rtt) | n/a | `string` | `"off"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | DNS zone name. | `string` | n/a | yes |
| <a name="input_zone_settings_override_enabled"></a> [zone\_settings\_override\_enabled](#input\_zone\_settings\_override\_enabled) | n/a | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_id"></a> [this\_id](#output\_this\_id) | The zone ID. |
| <a name="output_this_name_servers"></a> [this\_name\_servers](#output\_this\_name\_servers) | Cloudflare-assigned name servers. |
| <a name="output_this_plan"></a> [this\_plan](#output\_this\_plan) | The Cloudflare rate plan ID assigned to the zone. Falls back to var.plan when subscription\_enabled is false. |
<!-- END_TF_DOCS -->