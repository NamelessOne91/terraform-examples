variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t3.micro"
}

variable "instance_keypair" {
    description = "AWS EC2 key pair which will be associated with the EC2 instance"
    type = string
    default = "terraform-examples-key"
}