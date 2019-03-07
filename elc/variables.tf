variable "region"               { default =  "eu-west-2" }

variable apply_cache            { default = 1                           }
variable cluster_id             { default = "wickestest03"              }
variable engine                 { default = "redis"                     }
variable node_type              { default = "cache.t2.micro"            }
variable num_cache_nodes        { default = 1                           }
variable parameter_group_name   { default = "default.redis3.2"          }
variable engine_version         { default = "3.2.10"                    }
variable port                   { default = 6379                        }


data "terraform_remote_state" "aws" {
  backend = "s3"
  config = {
    bucket = "hahsnejeb-terraform"
    key    = "vpc-tfstate"
    region = "eu-west-2"
  }
}
output "test" {
  value = "${data.terraform_remote_state.aws.subnets}"
}

output "test2" {
  value = "${data.terraform_remote_state.aws.security_groups}"
}
