# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

# Create an aws instance named "micro-server"
resource "aws_instance" "micro-server" {
    ami = "ami-0729e439b6769d6ab"
    instance_type = "t2.micro"
    tags = {
        Name = "test-instance"
    }
}

# create a vpc
resource "aws_vpc" "test-vpc" {
  cidr_block        = "10.0.0.0/20"
   tags = {
        Name = "test-vpc"
    }
}

# create internet gateway

# create custom route table

# Create a subnet "test-subnet-1"
resource "aws_subnet" "test-subnet-1" {
  vpc_id     = aws_vpc.test-vpc.id
  cidr_block = "10.0.15.0/28"
  tags = {
    Name = "test-subnet-1"
  }
}

# associate subnet with route table

# create security group to allow port 22, 80, 443

# create a network interface "test-network-interface" with an ip in the subnet "test-subnet-1"

# assign an elastic ip to the network interace "test-network-interface"

# create Ubuntu server and install/enable apache2