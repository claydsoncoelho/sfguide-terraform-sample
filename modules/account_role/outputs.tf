output "names" {
  description = "The list of created account role names"
  value = [for role in snowflake_account_role.role : role.name]
}