variable "region" 		{ default =  "eu-west-2" }
variable "vpc_cidr"		{ default = "192.168.0.0/16" }
variable "subnet_cidr"		{ default = "192.168.1.0/24" }
variable "ami_amazon"		{ default = "ami-07a5200f3fa9c33d3" }
variable "instance_type"	{ default = "t2.micro" }
variable "key"			{ default = "dell_local" }

data "aws_availability_zones" "azs" {}

data "aws_security_group" "linux-ssh" {
  id = "${aws_security_group.linux-ssh.id}"
}

data "aws_security_group" "elc-redis" {
  id = "${aws_security_group.elc-redis.id}"
}

data "aws_subnet_ids" "subnets" {
  vpc_id = "${aws_vpc.main.id}"
}
