variable "enabled" {
  description = "Whether to create the IP list."
  type        = bool
  default     = true
}
variable "account_id" {
  description = "Account ID."
  type        = string
}
variable "name" {
  description = "List name."
  type        = string
}
variable "kind" {
  description = "List kind."
  type        = string
  default     = "ip"
}
variable "description" {
  description = "List description."
  type        = string
  default     = null
}
variable "ips" {
  description = "IP list items."
  type        = list(any)
  default     = []
}
