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

variable "type" {
  description = "Zone type."
  type        = string
  default     = "full"
}

variable "zone" {
  description = "DNS zone name."
  type        = string
}
