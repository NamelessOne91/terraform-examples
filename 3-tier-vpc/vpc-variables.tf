variable "vpc_name" {
    default = "my-vpc"
    description = "VPC name"
    type = string
}

variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
    description = "VPC CIDR block"
    type = string
}

# variable "vpc_azs" {
#     default = ["eu-west-1a", "eu-west-1b"]
#     description = "VPC availability zones"
#     type = list(string)
# }

variable "vpc_public_subnets" {
    default = ["10.0.101.0/24", "10.0.102.0/24"]
    description = "VPC public subnets"
    type = list(string)
}

variable "vpc_private_subnets" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
    description = "VPC private subnets"
    type = list(string)
}

variable "vpc_database_subnets" {
    default = ["10.0.151.0/24", "10.0.152.0/24"]
    description = "VPC DBs subnets"
    type = list(string)
}

variable vpc_enable_nat_gateway {
    default = true
    description = "Enable NAT gateway for the VPC"
    type = bool
}

variable vpc_single_nat_gateway {
    default = true
    description = "Enable only NAT gateway for the VPC"
    type = bool
}