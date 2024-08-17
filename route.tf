/// IGW

resource "aws_internet_gateway" "day3-IGW" {
  vpc_id = aws_vpc.day3_vpc.id
  tags = {
    Name = "day3-IGW"
  }
}


// Routing Table
// Public Route Table
resource "aws_route_table" "day3-public-rtb" {
  vpc_id = aws_vpc.day3_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.day3-IGW.id
  }

  tags = {
    Name = "day3-public-rtb"
  }

}

// Private Route Table
resource "aws_route_table" "day3-private-rtb" {
  vpc_id = aws_vpc.day3_vpc.id
  tags = {
    Name = "day3-private-rtb"
  }

}

//////////////////////
resource "aws_route_table_association" "public-route" {
  count = length(aws_subnet.day3-public-subnet)
  route_table_id = aws_route_table.day3-public-rtb.id
  subnet_id = aws_subnet.day3-public-subnet[count.index].id
}
resource "aws_route_table_association" "private-route" {
  count = length(aws_subnet.day3-private-subnet)
  route_table_id = aws_route_table.day3-private-rtb.id
  subnet_id = aws_subnet.day3-private-subnet[count.index].id
}
