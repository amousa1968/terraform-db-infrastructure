# terraform provider "aws" skip_credentials_validation flag, a mock secret_key is also required.

provider "aws" {
#  region                     = "${var.region}"
  region 					  = local.region
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
#  s3_force_path_style         = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
}