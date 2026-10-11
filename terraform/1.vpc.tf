# Create a VPC
resource "aws_vpc" "monitoring" {
  cidr_block = "10.0.0.0/16"

    tags = {
    Name = "monitoring-vpc"
  }
}
