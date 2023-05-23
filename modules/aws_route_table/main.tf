resource "aws_vpc_endpoint_route_table_association" "example" {

 vpc_id = var.vpc_id
 tags = var.tags

 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internetGW_id

 }
}

