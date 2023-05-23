resource "aws_subnet" "main" {
  vpc_id     = var.aws_vpc_id
  cidr_block = var.vpc_cidr_block
  availability_zone = var.availability_zone

  tags = var.tag
}

