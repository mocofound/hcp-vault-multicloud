resource "hcp_vault_cluster" "aws_cluster" {
  cluster_id = "${var.prefix}-aws"
  hvn_id = hcp_hvn.aws_hvn.hvn_id
  tier = var.hcp_vault_tier
  public_endpoint = true
}

resource "hcp_vault_cluster_admin_token" "aws_token" {
  cluster_id =  hcp_vault_cluster.aws_cluster.cluster_id
}