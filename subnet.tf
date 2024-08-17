data "aws_availability_zones" "day3" {
  state = "available"
}
// resource

resource "aws_subnet" "day3-public-subnet" {
  count = length(data.aws_availability_zones.day3.names)
  vpc_id = aws_vpc.day3_vpc.id
  cidr_block = var.pub-cider[count.index]
  availability_zone = var.pub-zone[count.index]
  tags = {
    Name = var.pub-sunet-name[count.index]
  }
}

resource "aws_subnet" "day3-private-subnet" {
  count = length(data.aws_availability_zones.day3.names)
  vpc_id = aws_vpc.day3_vpc.id
  cidr_block = var.prv-cider[count.index]
  availability_zone = var.prv-zone[count.index]
  tags = {
    Name = var.prv-sunet-name[count.index]
  }
}

