# Consumers of the legacy GitLab module terraform-cloudflare-record (provider v4)
# managed cloudflare_record.<name>. Provider v5 renamed the type to
# cloudflare_dns_record and moves the state itself (MoveState handler), so the
# instance keys are preserved. Cross-type moves require Terraform 1.8 or later.
moved {
  from = cloudflare_record.this
  to   = cloudflare_dns_record.this
}

moved {
  from = cloudflare_record.caa
  to   = cloudflare_dns_record.caa
}

moved {
  from = cloudflare_record.srv
  to   = cloudflare_dns_record.srv
}
