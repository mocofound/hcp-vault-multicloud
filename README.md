# hcp-vault-multicloud
This repo quickly provisions HCP Vault in both Azure and AWS using Terraform.

# Prereqs:

1. Create a service principal
Once you have registered and logged into the HCP portal, navigate to the Access Control (IAM) page. Select the Service Principals tab and create a new service principal. Give it the role Contributor, since it will be writing resources.

2. Create a service principal key
Once the service principal is created, navigate to its detail page by selecting its name in the list. Create a new service principal key.

```
Save the following:

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
