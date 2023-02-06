data "terraform_remote_state" "hcp" {
  backend = "local"

  config = {
    path = "../hcp/terraform.tfstate"
  }
}



resource "vault_mount" "example" {
  path        = "dummy"
  type        = "generic"
  description = "This is an example mount"
}