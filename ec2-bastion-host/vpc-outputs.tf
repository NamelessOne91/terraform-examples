output "vpc_name" {
    description = "name of the created VPC"
    value = module.vpc.name
}

output "vpc_cidr_block" {
    description = "CIDR block of the created VPC"
    value = module.vpc.vpc_cidr_block
}

output "vpc_id" {
    description = "the new VPC ID"
    value = module.vpc.vpc_id
}

output "nat_public_ips" {
    description = "public elastic IPs for the VPC's NAT Gateway"
    value = module.vpc.nat_public_ips
}