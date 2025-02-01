terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "generic" {
  privileges        = var.privileges
  account_role_name = var.role_name
  on_account_object {
    object_type = var.object_type
    object_name = var.object_name
  }
}

resource "snowflake_grant_privileges_to_account_role" "warehouse_grant" {
  privileges        = var.privileges
  account_role_name = var.role_name
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = "TF_DEMO_WH"
  }
}

resource "snowflake_grant_privileges_to_account_role" "user_grant" {
  privileges        = ["MONITOR"]
  account_role_name = var.role_name
  on_account_object {
    object_type = "USER"
    object_name = "tf_demo_user"
  }
}