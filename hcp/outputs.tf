output "hcp_aws_hvn_id" {
  value = hcp_hvn.aws_hvn.id
}

output "hcp_aws_vault_address" {
  value = hcp_vault_cluster.aws_cluster.vault_public_endpoint_url
}

output "aws_vault_token" {
  sensitive = true
  value = hcp_vault_cluster_admin_token.aws_token.token
}

output "hcp_azure_hvn_id" {
  value = hcp_hvn.azure_hvn.id
}

output "hcp_azure_vault_address" {
  value = hcp_vault_cluster.azure_cluster.vault_public_endpoint_url
}

output "azure_vault_token" {
  sensitive = true
  value = hcp_vault_cluster_admin_token.azure_token.token
}
