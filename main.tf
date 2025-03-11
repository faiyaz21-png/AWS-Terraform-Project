provider "aws" {
  region = "ap-southeast-2"
  profile = "terraform-user"
}

terraform {
  backend "s3" {
    bucket = "faiyazx21-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "ap-southeast-2"
    profile = "terraform-user"
  }
}
