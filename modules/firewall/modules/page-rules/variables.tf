variable "enabled" {
  description = "Whether to create page rules."
  type        = bool
  default     = true
}
variable "zone_id" {
  description = "Zone ID."
  type        = string
}
variable "rules" {
  description = "Page rule objects."
  type        = list(any)
  default     = null
}
