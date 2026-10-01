module "cloudflare" {
  source = "../.."

  records = {
    example = {
      records = [{ name = "www", type = "CNAME", value = "origin.example.invalid" }]
      zone_id = "00000000000000000000000000000000"
    }
  }
}
