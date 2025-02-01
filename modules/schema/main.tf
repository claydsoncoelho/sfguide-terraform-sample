terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
    }
  }
}

resource "snowflake_schema" "schema" {
  database = var.database
  name = var.name
}