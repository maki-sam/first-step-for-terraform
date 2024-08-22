//Public Subnet
resource "aws_subnet" "day4-public-Subnet" {
  for_each                = var.public_subnet
  vpc_id                  = aws_vpc.day4-vpc.id
  cidr_block              = each.value.cidr
  map_public_ip_on_launch = true
  availability_zone       = each.value.availability_zone
  tags = {
    Name = "${local.makisam_vpc_name}-${each.value.Name}"
  }
}

