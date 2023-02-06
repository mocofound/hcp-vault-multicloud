resource "hcp_hvn" "azure_hvn" {
  hvn_id = "${var.prefix}-azure"
  region = var.azure_region
  cloud_provider = "azure"
}
