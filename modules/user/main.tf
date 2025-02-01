terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
    }
  }
}

resource "tls_private_key" "svc_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "snowflake_user" "user" {
    name              = var.name
    default_warehouse = var.warehouse
    default_role      = var.role
    default_namespace = "${var.database}.${var.schema}"
    rsa_public_key    = substr(tls_private_key.svc_key.public_key_pem, 27, 398)
}