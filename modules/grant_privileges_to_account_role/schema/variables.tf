variable "privileges" {
  description = "The privilege list."
  type        = list
}

variable "database" {
  description = "The database name."
  type        = string
}

variable "schema" {
  description = "The schema name."
  type        = string
}

variable "role" {
  description = "The role name."
  type        = string
}
