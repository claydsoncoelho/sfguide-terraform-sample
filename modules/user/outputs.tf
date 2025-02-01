output "name" {
  description = "The schema name"
  value = snowflake_user.user.name
}

output "tls_private_key" {
  description = "The tls_private_key"
  value = tls_private_key.svc_key
}