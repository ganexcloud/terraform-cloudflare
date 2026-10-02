variable "zone" {
  description = "Optional basic zone configuration for the consolidated root module."
  type = object({
    account_id           = string
    name                 = string
    paused               = optional(bool, false)
    plan                 = optional(string, "free")
    subscription_enabled = optional(bool, true)
    type                 = optional(string, "full")
  })
  default  = null
  nullable = true
}

variable "records" {
  description = "Map of record module configurations keyed by logical name."
  type        = map(any)
  default     = {}
}

variable "rulesets" {
  description = "Map of Ruleset module configurations keyed by logical name."
  type        = map(any)
  default     = {}
}

variable "firewall_rules" {
  description = "Map of legacy firewall rule module configurations keyed by logical name."
  type        = map(any)
  default     = {}
}

variable "ip_lists" {
  description = "Map of account IP list module configurations keyed by logical name."
  type        = map(any)
  default     = {}
}

variable "page_rules" {
  description = "Map of page rule module configurations keyed by logical name."
  type        = map(any)
  default     = {}
}
