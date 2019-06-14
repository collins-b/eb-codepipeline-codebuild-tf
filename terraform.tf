terraform {
  backend "s3" {
    bucket = "tf-eb-artifacts-bucket"
    key    = "ebtf/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}