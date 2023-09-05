# Deploy a PostgreSQL database to AWS with Terraform

# terraform-db-infrastructure
This repository holds Terraform code/files that deployment step-by-step instructions for deploying an Amazon Aurora PostgreSQL database to AWS account.

# Pre-requisites:
AWS account and IAM user with access to the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY values. 

- To use your IAM credentials to authenticate the Terraform AWS provider, set the AWS_ACCESS_KEY_ID environment variable.
```
 export AWS_ACCESS_KEY_ID=
```

- Now, set your secret key.
```
 export AWS_SECRET_ACCESS_KEY=
```

# I will be using a Linux machine to do the following:

- Install and setup Terraform.
- Create Terraform code/files to define a simple PostgreSQL database resource for aws cloud providers.
```
terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.15.0"
      }
    }
}

provider "aws" {
    region = "us-east-1"
    access_key = "your_aws_access_key"
    secret_key = "your_aws_secret_access_key"
}
```

- Run Terraform to deploy PostgreSQL database.

# Install and Setup Terraform

- Install Terraform in our CentOS machine by running the following commands in the terminal:
```
sudo yum install -y yum-utils
sudo yum-config-manager — add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform
```

run, 
```
terraform -version
```

---

## Create Local Variables

### PostgreSQL Variables

`POSTGRES_IDENTIFIER` > Set itentifier - can be the same as database name

`POSTGRES_DB_NAME` > Set database name

`YOUR_USERNAME` > Set unique user name

`YOUR_PASSWORD` > Set unique user password

`POSTGRES_DB_INSTANCE_NAME` > Unique name cross all DB instances owned by current AWS account

`POSTGRES_DB_PASSWORD` > Set database password

`POSTGRES_PORT` > Default port for PostgreSQL: 5432

---

## Check if it works

```
$ terraform init
```
output:
```
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "5.15.0"...
- Installing hashicorp/aws v5.15.0...
- Installed hashicorp/aws v5.15.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!
```
Next run:

```
$ terraform plan
```

Correct output:

Plan: Plan: 1 to add, 0 to change, 0 to destroy. = SUCCESS

---

## Apply instance into AWS

```
$ transform apply
```

---

---

## Apply instance into AWS deploy the Terraform Amazon Aurora module by running the following commands in your terminal window:

```
terraform apply --auto-approve
```

---

## Cleanup to remove all infractucture

```
$ terraform destroy --auto-approve
```

Correct output:
Plan: 0 to add, 0 to change, <number-of-resources> to destroy




























Please follow the in-depth description in this Medium article to get started: https://medium.com/@chowsimson/how-to-deploy-a-postgresql-database-to-aws-azure-and-google-cloud-platform-with-terraform-in-3-27f78d1f536f
