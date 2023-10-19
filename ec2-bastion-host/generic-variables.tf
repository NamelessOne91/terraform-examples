variable "aws_region" {
    description = "AWS Region in which the resources will be created"
    default = "eu-west-1"
    type = string
}

variable "environment" {
    description = "env variable used as prefix"
    default = "dev"
    type = string
}

variable "business_division" {
    description = "business division the resources belong to"
    default = "SAP"
    type = string
}