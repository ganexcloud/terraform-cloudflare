output "id" {
  description = "Cloudflare list ID."
  value       = try(cloudflare_list.this[0].id, null)
}
