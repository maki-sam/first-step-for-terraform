### Creating VPC
resource "aws_vpc" "day3_vpc" {
  cidr_block = var.day3_vpc_cider
  instance_tenancy = "default"
  tags = {
    Name = var.day3_vpc-name
  }
  enable_dns_hostnames = "true"
  enable_dns_support = "true"

}

output "day3_vpc" {
    value = aws_vpc.day3_vpc.id 
}

/// IGW

resource "aws_internet_gateway" "day3-IGW" {
  vpc_id = aws_vpc.day3_vpc.id
  tags = {
    Name = "day3-IGW"
  }
}

