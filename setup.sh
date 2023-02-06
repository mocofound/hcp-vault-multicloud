#!/bin/bash

set -e

cd hcp
terraform init
terraform apply --auto-approve

cd ..
cd vault-azure
terraform init
terraform apply --auto-approve

cd ..
cd vault-aws
terraform init
terraform apply --auto-approve