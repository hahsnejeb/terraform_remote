variable "region"               { default =  "eu-west-2" }

data "terraform_remote_state" "aws" {
  backend = "s3"
  config = {
    bucket = "hahsnejeb-terraform"
    key    = "vpc-tfstate"
    region = "eu-west-2"
  }
}
output "from_vpc-tfstate_subnets" {
  value = "${data.terraform_remote_state.aws.subnets}"
}

data "terraform_remote_state" "elc" {
  backend = "s3"
  config = {
    bucket = "hahsnejeb-terraform"
    key    = "elc-tfstate"
    region = "eu-west-2"
  }
}

output "from_elc-tfstate_elc_endpoint" {
  value = "${data.terraform_remote_state.elc.elc_endpoint}"
}
