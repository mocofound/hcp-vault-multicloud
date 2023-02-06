resource "hcp_vault_cluster" "azure_cluster" {
  cluster_id = "${var.prefix}-azure"
  hvn_id = hcp_hvn.azure_hvn.hvn_id
  tier = var.hcp_vault_tier
  public_endpoint = true
}

resource "hcp_vault_cluster_admin_token" "azure_token" {
  cluster_id =  hcp_vault_cluster.azure_cluster.cluster_id
}