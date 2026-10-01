module "record" {
  source = "../../modules/record"

  records = [{ name = "www", type = "CNAME", value = "origin.example.invalid" }]
  zone_id = "00000000000000000000000000000000"
}
