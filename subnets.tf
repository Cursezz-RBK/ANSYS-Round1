resource "aws_subnet" "public_subnets" {
  count             = length(var.availability_zones)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = cidrsubnet("10.0.0.0/16", 8, count.index)
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "ansys-round1-public-subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnets" {
  count             = length(var.availability_zones)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = cidrsubnet("10.0.128.0/17", 8, count.index)
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "ansys-round1-private-subnet-${count.index + 1}"
  }
}