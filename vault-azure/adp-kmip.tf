locals {
  encryption_types = toset([
    "FLE",
    "QUERYABLE",
  ])
}

resource "vault_kmip_secret_backend" "default" {
  path        = "kmip"
  description = "Vault KMIP backend"
  listen_addrs                = ["0.0.0.0:5696", "127.0.0.1:5696"]
  tls_ca_key_type             = "rsa"
  tls_ca_key_bits             = 4096
  default_tls_client_key_type = "rsa"
  default_tls_client_key_bits = 4096
  default_tls_client_ttl      = 86400
}


resource "vault_kmip_secret_scope" "vmware" {
  path  = vault_kmip_secret_backend.default.path
  scope = "vmware"
  force = true
}


resource "vault_kmip_secret_role" "vmware_admin" {
  path                     = vault_kmip_secret_scope.vmware.path
  scope                    = vault_kmip_secret_scope.vmware.scope
  role                     = "admin"
  tls_client_key_type      = "rsa"
  tls_client_key_bits      = 2048
  operation_activate       = true
  operation_get            = true
  operation_get_attributes = true
  operation_create         = true
  operation_destroy        = true
}
