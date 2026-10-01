variable "enabled" {
  description = "Whether to create firewall rules."
  type        = bool
  default     = true
}
variable "zone_id" {
  description = "Zone ID."
  type        = string
}
variable "rules" {
  description = "Legacy firewall rule objects."
  type        = list(any)
  default     = null
}
