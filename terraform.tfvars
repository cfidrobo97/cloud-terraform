virginia_cidr = "10.0.0.0/16"
//public_subnet = "10.0.0.0/24"
//private_subnet = "10.0.1.0/24"
subnets = [ "10.0.0.0/24", "10.0.1.0/24" ]
tags = {
  "env" = "dev"
  "owner" = "cristiandev"
  "cloud" = "AWS"
  "IAC" = "terraform"
  "IAC_Version"="1.12.2"
  "project"="cerberus"
  "region"="virginia"
}
sg_ingress_cidr = "0.0.0.0/0"

ec2_specs = {
  "ami" = "ami-0150ccaf51ab55a51"
  "instance_type" = "t3.micro"
}
enable_monitoring = 0
ingress_port_list = [ 22, 80, 443]