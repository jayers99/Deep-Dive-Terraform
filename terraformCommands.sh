terraform init

cd module2
terraform plan --var-file='~/.aws/awscreds.tfvars'
terraform apply --var-file='~/.aws/awscreds.tfvars'
terraform destroy --var-file='~/.aws/awscreds.tfvars'


