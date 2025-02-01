terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
    }
  }
}

resource "snowflake_account_role" "role" {
  for_each = toset(var.names)
  name = each.value
}