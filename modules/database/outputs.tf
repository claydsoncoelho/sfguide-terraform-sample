output "names" {
  description = "The list of created database names"
  value = [for database in snowflake_database.db : database.name]
}