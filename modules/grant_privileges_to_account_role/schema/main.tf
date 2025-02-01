terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "schema_grant" {
  privileges        = var.privileges
  account_role_name = var.role
  on_schema {
    schema_name = "\"${var.database}\".\"${var.schema}\""
  }
}