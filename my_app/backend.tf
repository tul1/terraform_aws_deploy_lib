terraform {
  backend "s3" {
    bucket = "terraform-state-bjhmu7ci"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}