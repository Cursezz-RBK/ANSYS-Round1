resource "aws_instance" "web_server" {
  count = length(var.availability_zones)

  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnets[count.index].id
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  associate_public_ip_address = true

  tags = {
    Name = "ansys-round1-public-instance-${count.index + 1}"
  }
}

resource "aws_instance" "private_instance" {
  count = length(var.availability_zones)

  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.private_subnets[count.index].id
 
  tags = {
    Name = "ansys-round1-private-instance-${count.index + 1}"
  }
}