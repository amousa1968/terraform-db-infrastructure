terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }
  }
}

# To use aws credentials directly into the Terraform template file, uncomment below code block and comment code block line #21 to line # 30 using /* xxxxx */ 
/*
provider "aws" {
    region     = "us-west-1"
    access_key = "your_aws_access_key"
    secret_key = "your_aws_secret_access_key"
}
*/

# terraform provider "aws" skip_credentials_validation flag, a mock secret_key is also required.

provider "aws" {
#  region                     = "${var.region}"
  region 					  = "us-west-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
#  s3_force_path_style         = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
}