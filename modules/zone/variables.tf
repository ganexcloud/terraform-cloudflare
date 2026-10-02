variable "account_id" {
  description = "Cloudflare account ID that owns the zone."
  type        = string
}

variable "paused" {
  description = "Whether the zone is paused."
  type        = bool
  default     = false
}

variable "plan" {
  description = "Cloudflare zone subscription rate plan ID."
  type        = string
  default     = "free"
}

variable "subscription_enabled" {
  description = "Whether to manage the zone subscription. Set to false for Free zones whose subscription API returns 404 (cloudflare/terraform-provider-cloudflare#7083)."
  type        = bool
  default     = true
}

variable "type" {
  description = "Zone type."
  type        = string
  default     = "full"
}

variable "zone" {
  description = "DNS zone name."
  type        = string
}
