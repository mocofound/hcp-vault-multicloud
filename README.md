# hcp-vault-multicloud
This repo quickly provisions HCP Vault in both Azure and AWS using Terraform

# Prereqs:
```
hcp_client_id
hcp_client_secret
```

# Populate Variables
  ```
  rename /hcp/terraform.tfvarsexample to /hcp/terraform.tfvars
  populate variables in terraform.tfvars file as appropriate, especially:

     hcp_client_id
     hcp_client_secret
     prefix
  ```

# Provision using Terraform

```
chmod a+x setup.sh
./setup.sh
```
