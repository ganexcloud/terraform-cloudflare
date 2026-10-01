module "zone" {
  source = "../../modules/zone"

  account_id = "00000000000000000000000000000000"
  zone       = "example.invalid"
}
