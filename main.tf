terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "1.0.2"
    }
  }
}

provider "snowflake" {
    role = var.account_overseeing_role
    organization_name = "djuocbc"
    account_name = "qm18297"
    authenticator = "SNOWFLAKE_JWT"
}

module "account_role" {
  source = "./modules/account_role"
  names = var.roles
}

module "database" {
  source = "./modules/database"
  names = var.databases
}

# module "schema" {
#   source = "./modules/schema"
#   database = module.database.name
#   name = "TF_DEMO_SCHEMA"
# }

# module "warehouse" {
#   source = "./modules/warehouse"
#   name = "TF_DEMO_WH"
#   size = "xsmall"
#   auto_suspend = 60
# }

# module "user"{
#   source = "./modules/user"
#   name = "tf_demo_user"
#   warehouse = module.warehouse.name
#   database = module.database.name
#   schema = module.schema.name
#   role = module.account_role.name
# }

# module "grant_privileges_to_account_role_generic"{
#   source = "./modules/grant_privileges_to_account_role/generic"
#   privileges = ["USAGE"]
#   object_type = "DATABASE"
#   object_name = module.database.name
#   role_name = module.account_role.name
# }

# module "grant_privileges_to_account_role_schema"{
#   source = "./modules/grant_privileges_to_account_role/schema"
#   privileges = ["USAGE"]
#   database = module.database.name
#   schema = module.schema.name
#   role = module.account_role.name
# }

# module "grant_account_role"{
#   source = "./modules/grant_account_role"
#   role = module.account_role.name
#   user = module.user.name
# }