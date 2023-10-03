data "aws_availability_zones" "available" {
    state = "available"
}

module "vpc" {
    source  = "terraform-aws-modules/vpc/aws"
    version = "5.1.2"

    name = "${local.name}-${local.vpc_name}"
    cidr = var.vpc_cidr_block
    # azs             = var.vpc_azs
    azs = data.aws_availability_zones.available.names
    private_subnets = var.vpc_private_subnets
    public_subnets  = var.vpc_public_subnets

    create_database_subnet_group = true
    create_database_subnet_route_table = true
    database_subnets = var.vpc_database_subnets
    # you'll need those to make your DB publicly available
    # create_database_nat_gateway_route = true
    # create_database_internet_gateway_route = true

    # NAT gateway for outbound communication
    enable_nat_gateway = var.vpc_enable_nat_gateway
    single_nat_gateway = var.vpc_single_nat_gateway # likely false in production

    # VPC DNS - true in most cases
    enable_dns_hostnames =  true
    enable_dns_support = true

    public_subnet_tags = {
        Name = "public-subnets"
    }

    private_subnet_tags = {
        Name = "private-subnets"
    }

    database_subnet_tags = {
        Name = "database-subnets"
    }

    tags = local.common_tags
    vpc_tags = local.common_tags
}