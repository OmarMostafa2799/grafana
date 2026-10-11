resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.monitoring.id
  tags = {
    Name = "monitoring-igw"
  }

}
