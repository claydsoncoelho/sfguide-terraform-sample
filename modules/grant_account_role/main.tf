terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
    }
  }
}

resource "snowflake_grant_account_role" "grants" {
  role_name = var.role
  user_name = var.user
}