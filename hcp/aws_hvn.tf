resource "hcp_hvn" "aws_hvn" {
  hvn_id = "${var.prefix}-aws"
  region = var.aws_region
  cloud_provider = "aws"
}
