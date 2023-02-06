terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "3.12.0"
    }
  }
}

provider "vault" {
  address = data.terraform_remote_state.hcp.outputs.hcp_azure_vault_address
  token = data.terraform_remote_state.hcp.outputs.azure_vault_token
  add_address_to_env = true
  namespace = "admin"
}