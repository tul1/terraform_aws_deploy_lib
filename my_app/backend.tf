terraform {
  backend "s3" {
    bucket = "terraform-state-io2gc9hh"
    key    = "terraform.tfstate"
    region = "eu-west-3"
  }
}