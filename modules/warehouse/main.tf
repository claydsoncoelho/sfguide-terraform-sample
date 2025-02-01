terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
    }
  }
}

resource "snowflake_warehouse" "warehouse" {
  name           = var.name
  warehouse_size = var.size
  auto_suspend   = var.auto_suspend
}
