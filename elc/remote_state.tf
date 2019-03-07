terraform {
  backend "s3" {
    bucket = "hahsnejeb-terraform"
    key    = "elc-tfstate"
    region = "eu-west-2"
  }
}
