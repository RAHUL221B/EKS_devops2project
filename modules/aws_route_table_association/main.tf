resource "aws_vpc_endpoint_route_table_association" "example" {
  route_table_id  = var.route_table_id
  subnet_id = var.subnet_id
}
