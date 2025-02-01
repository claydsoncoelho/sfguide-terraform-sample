terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
    }
  }
}

resource "snowflake_database" "db" {
  for_each = toset(var.names)
  name = each.value
}