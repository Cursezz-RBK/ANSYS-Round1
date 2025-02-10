### Project Structure :

The project is structured into two main sections:

* `state-management`: Contains the Terraform configuration for managing the S3 bucket and DynamoDB table used for remote state storage.
* `main`: Contains the Terraform configuration for the main infrastructure (VPC, subnets, instances, etc.).


1] Deployment Steps -

Follow these steps to deploy the infrastructure:

cd state-management
terraform init
terraform plan  
terraform apply -auto-approve

2] Retrieve Output Values -

terraform output bucket_name
terraform output dynamodb_table_name

3] Configure Main Project Backend -

Navigate to the main project files and open the providers.tf file.
Replace the values for bucket and dynamodb_table in the backend "s3" block with the actual values you retrieved in the previous step.

4] Deploy Main Infrastructure -

cd ..
terraform init
terraform plan
terraform apply -auto-approve

5] Verify Deployment -

Public IP Addresses: After the main project apply completes, you can retrieve the public IP addresses of the instances
in the public subnets.

terraform output public_ips




