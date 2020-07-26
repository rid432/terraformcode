resource "aws_vpc" "Customer" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Terra_Customer_VPC"
  }
}
  resource "aws_subnet" "Privatecustomer" {
  vpc_id     = "vpc-0648f2628658281e5"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Terra_Private_Customer_Subnet"
  }
  }
   resource "aws_subnet" "Publiccustomer" {
  vpc_id     = "vpc-0648f2628658281e5"
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Terra_Public_Customer_Subnet"
  }
}
#lets try