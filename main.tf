module "vpc_modules" {

    source = "./modules/aws_vpc"

    for_each = var.vpc_config
    vpc_cidr_block = each.value.vpc_cidr_block
    tags = each.value.tags
  
}

module "aws_subnet_module" {

    source = "./modules/aws_subnet"

    for_each = var.subnet_config

    vpc_id     = module.vpc_modules[each.value.vpc_name].vpc_id
  cidr_block = each.value.cidr_block
  availability_zone =  each.value.availability_zone
  tags = each.value.tags
}