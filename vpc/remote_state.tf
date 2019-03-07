terraform {
  backend "s3" {
    bucket = "hahsnejeb-terraform"
    key    = "vpc-tfstate"
    region = "eu-west-2"
  }
}
