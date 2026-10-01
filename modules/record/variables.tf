variable "zone_id" {
  description = "DNS zone ID."
  type        = string
}

variable "zone_name" {
  description = "Optional zone name used to compose SRV owner names."
  type        = string
  default     = null
}

variable "records" {
  description = "DNS records excluding CAA and SRV records."
  type        = list(any)
  default     = []
}

variable "records_caa" {
  description = "CAA records."
  type        = list(any)
  default     = []
}

variable "records_srv" {
  description = "SRV records."
  type        = list(any)
  default     = []
}
