resource "aws_route_table" "day4-public-rtb" {
  vpc_id = aws_vpc.day4-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.day4-igw.id
  }
  tags = {
    Name = "day4-public-rtb"
  }
}
/////
resource "aws_route_table_association" "public-route_table_association" {
  for_each       = aws_subnet.day4-public-Subnet
  subnet_id      = each.value.id
  route_table_id = aws_route_table.day4-public-rtb.id
}
