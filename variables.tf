#Define account overseeing role
variable "account_overseeing_role" {
  type    = string
  default = "ACCOUNTADMIN"
}

###########################################################
# Roles
###########################################################
variable "roles" {
  type    = list(string)
}

###########################################################
# Databases
###########################################################
variable "databases" {
  type    = list(string)
}