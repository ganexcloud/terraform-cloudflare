module "rulesets" {
  source = "../../modules/firewall/modules/rulesets"

  description = "Example managed rules exception"
  kind        = "zone"
  name        = "Managed Rules exceptions"
  phase       = "http_request_firewall_managed"
  rules       = []
  zone_id     = "00000000000000000000000000000000"
}
