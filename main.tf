# configured aws provider with proper credentials
provider "aws" {
  region  = "us-east-1"
  profile = "terraform-user"
}

# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "aosnotes77-terraform-remote-state"
    key     = "fleetcart/terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform-user"
  }
}
