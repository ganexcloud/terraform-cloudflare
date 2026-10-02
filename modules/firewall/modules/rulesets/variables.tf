variable "enabled" {
  description = "Whether to create the ruleset."
  type        = bool
  default     = true
}

variable "zone_id" {
  description = "Zone ID."
  type        = string
}
variable "name" {
  description = "Ruleset name."
  type        = string
}
variable "description" {
  description = "Ruleset description."
  type        = string
}
variable "kind" {
  description = "Ruleset kind."
  type        = string
}
variable "phase" {
  description = "Ruleset phase."
  type        = string
}
variable "rules" {
  description = "Ruleset rule objects, in the `cloudflare_ruleset` v5 schema. Typed as `any`, as in the legacy module, so rules with different shapes (for example `execute` and `skip`) can share one list."
  type        = any
  default     = []
}
