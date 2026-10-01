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
  description = "Ruleset rule objects."
  type        = list(any)
  default     = []
}
