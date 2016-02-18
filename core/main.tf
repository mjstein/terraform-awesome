# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
}

# Create a VPC to launch our instances into
resource "aws_vpc" "blah" {
  cidr_block = "10.0.0.0/16"
}

# Create an internet gateway to give our subnet access to the outside world
resource "aws_internet_gateway" "blah" {
  vpc_id = "${aws_vpc.blah.id}"
}

# Grant the VPC internet access on its main route table
resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.blah.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.blah.id}"
}

