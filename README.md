# terraform-multi-env

Deploying Multiple Environments with Terraform

https://medium.com/capital-one-tech/deploying-multiple-environments-with-terraform-kubernetes-7b7f389e622

Testing the idea above

# create  terraform workspaces

```
terraform init
terraform workspace new dev 
terraform workspace new qa
terraform workspace new staging
terraform workspace new prod
terraform workspace new personal

# switch to workspace
terraform workspace select dev 
# test it
terraform apply

# switch to unkown workspace
terraform workspace select personal
terraform apply

# switch to workspace
terraform workspace select prod
terraform apply


