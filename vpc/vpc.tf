provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "default"
  tags {
    Name = "main"
    Location = "${var.region}"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet_cidr}"
  tags {
    Name = "subnet-1"
  }
}

output "availability_zones" {
  value = "${data.aws_availability_zones.azs.names}" }

output "subnets" {
  value = "${data.aws_subnet_ids.subnets.ids}" }
