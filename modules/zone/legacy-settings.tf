variable "zone_settings_override_enabled" {
  type    = bool
  default = true
}
variable "always_online" {
  type    = string
  default = "on"
}
variable "always_use_https" {
  type    = string
  default = "off"
}
variable "automatic_https_rewrites" {
  type    = string
  default = "off"
}
variable "brotli" {
  type    = string
  default = "on"
}
variable "browser_check" {
  type    = string
  default = "on"
}
variable "development_mode" {
  type    = string
  default = "off"
}
variable "email_obfuscation" {
  type    = string
  default = "on"
}
variable "hotlink_protection" {
  type    = string
  default = "off"
}
variable "http2" {
  type    = string
  default = "on"
}
variable "http3" {
  type    = string
  default = "on"
}
variable "ip_geolocation" {
  type    = string
  default = "on"
}
variable "ipv6" {
  type    = string
  default = "on"
}
variable "mirage" {
  type    = string
  default = "off"
}
variable "opportunistic_encryption" {
  type    = string
  default = "on"
}
variable "opportunistic_onion" {
  type    = string
  default = "on"
}
variable "origin_error_page_pass_thru" {
  type    = string
  default = "off"
}
variable "prefetch_preload" {
  type    = string
  default = "off"
}
variable "privacy_pass" {
  type    = string
  default = "on"
}
variable "response_buffering" {
  type    = string
  default = "off"
}
variable "rocket_loader" {
  type    = string
  default = "off"
}
variable "server_side_exclude" {
  type    = string
  default = "on"
}
variable "sort_query_string_for_cache" {
  type    = string
  default = "off"
}
variable "tls_client_auth" {
  type    = string
  default = "off"
}
variable "true_client_ip_header" {
  type    = string
  default = "off"
}
variable "universal_ssl" {
  type    = string
  default = "on"
}
variable "waf" {
  type    = string
  default = "off"
}
variable "webp" {
  type    = string
  default = "off"
}
variable "websockets" {
  type    = string
  default = "on"
}
variable "zero_rtt" {
  type    = string
  default = "off"
}
variable "cache_level" {
  type    = string
  default = "aggressive"
}
variable "cname_flattening" {
  type    = string
  default = "flatten_at_root"
}
variable "h2_prioritization" {
  type    = string
  default = "on"
}
variable "image_resizing" {
  type    = string
  default = "off"
}
variable "min_tls_version" {
  type    = string
  default = "1.0"
}
variable "polish" {
  type    = string
  default = "off"
}
variable "pseudo_ipv4" {
  type    = string
  default = "off"
}
variable "security_level" {
  type    = string
  default = "medium"
}
variable "ssl" {
  type    = string
  default = "full"
}
variable "tls_1_3" {
  type    = string
  default = "on"
}
variable "browser_cache_ttl" {
  type    = number
  default = 14400
}
variable "challenge_ttl" {
  type    = number
  default = 1800
}
variable "max_upload" {
  type    = number
  default = 100
}
variable "minify" {
  type    = any
  default = { css = "off", html = "off", js = "off" }
}
variable "mobile_redirect" {
  type = any
  # The API returns mobile_subdomain as null when unset; "" would plan a perpetual update.
  default = { mobile_subdomain = null, status = "off", strip_uri = false }
}
variable "security_header" {
  type    = any
  default = { enabled = false, preload = false, max_age = 0, include_subdomains = false, nosniff = false }
}

locals {
  zone_settings = {
    always_online               = var.always_online
    always_use_https            = var.always_use_https
    automatic_https_rewrites    = var.automatic_https_rewrites
    brotli                      = var.brotli
    browser_cache_ttl           = var.browser_cache_ttl
    browser_check               = var.browser_check
    cache_level                 = var.cache_level
    challenge_ttl               = var.challenge_ttl
    cname_flattening            = var.cname_flattening
    development_mode            = var.development_mode
    email_obfuscation           = var.email_obfuscation
    h2_prioritization           = var.h2_prioritization
    hotlink_protection          = var.hotlink_protection
    http2                       = var.http2
    http3                       = var.http3
    image_resizing              = var.image_resizing
    ip_geolocation              = var.ip_geolocation
    ipv6                        = var.ipv6
    max_upload                  = var.max_upload
    min_tls_version             = var.min_tls_version
    mirage                      = var.mirage
    opportunistic_encryption    = var.opportunistic_encryption
    opportunistic_onion         = var.opportunistic_onion
    origin_error_page_pass_thru = var.origin_error_page_pass_thru
    polish                      = var.polish
    prefetch_preload            = var.prefetch_preload
    privacy_pass                = var.privacy_pass
    pseudo_ipv4                 = var.pseudo_ipv4
    response_buffering          = var.response_buffering
    rocket_loader               = var.rocket_loader
    security_level              = var.security_level
    server_side_exclude         = var.server_side_exclude
    sort_query_string_for_cache = var.sort_query_string_for_cache
    ssl                         = var.ssl
    minify                      = var.minify
    mobile_redirect             = var.mobile_redirect
    security_header = {
      strict_transport_security = var.security_header
    }
    tls_1_3               = var.tls_1_3
    tls_client_auth       = var.tls_client_auth
    true_client_ip_header = var.true_client_ip_header
    waf                   = var.waf
    webp                  = var.webp
    websockets            = var.websockets
    "0rtt"                = var.zero_rtt
  }
}
