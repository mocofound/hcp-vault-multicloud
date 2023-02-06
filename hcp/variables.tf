
variable "prefix" {
  default = "vault-mc"
}


variable "hcp_client_id" {
  default = "changeme"
}

variable "hcp_client_secret" {
  default = "changeme"
}

# variable "aad_client_id" {
#   default = "changeme"
# }

# variable "aad_client_secret_value" {
#   default = "changeme"
# }

# variable "aad_tenant_id" {
#   default = "changeme"
# }

variable "aws_region" {
  description = "The region where the resources are created."
  default     = "us-east-1"
}

variable "vault_namespace" {
  default = "admin"
}

variable "hcp_vault_tier" {
  default = "development"
}

variable "aws_db_instance_login_name" {
  default = "changeme"
}

variable "aws_db_instance_login_password" {
  default = "changeme"
}

variable "gcp_region" {
  default = "changeme"
}

variable "gcp_project_id" {
  default = "changeme"
}

variable "gke_username" {
  default = "changeme"
}

variable "gke_password" {
  default = "changeme"
}

variable "azure_region" {
  default = "centralus"
}

variable "azure_resource_group_name" {
  default = "changeme"
}