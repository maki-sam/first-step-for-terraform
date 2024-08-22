//data
data "aws_availability_zones" "day4-zone" {
  state = "available"
}
//VPC
resource "aws_vpc" "day4-vpc" {
  cidr_block = var.day4-vpc.cidr

  tags = {
    Name = var.day4-vpc.Name
  }
}

//IGW
resource "aws_internet_gateway" "day4-igw" {
  vpc_id = aws_vpc.day4-vpc.id
  tags = {
    Name = "Day4-IGW"
  }
}
