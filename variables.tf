variable "virginia_cidr" {
    description = "CIDR de virginia"
    type = string
}
/* 
variable "public_subnet" {
    description = "CIDR public subnet"
    type = string
}

variable "private_subnet" {
    description = "CIDR private subner"
    type = string
} */

variable "subnets" {
    description = "Lista de subnets"
    type = list(string)
}
variable "tags" {
    description = "Tags del Proyecto"
    type = map(string)
  
}
variable "sg_ingress_cidr" {
    description = "CIDR for ingress traffic"
    type = string
  
}

variable "ec2_specs" {
    description = "Parametros instancia"
    type = map(string)
  
}
variable "enable_monitoring" {
    description = "Habilita el despligue de un servidor de monitoreo"
    type = number
  
}
variable "ingress_port_list" {
    description = "Lista de puertos ingress"
    type = list(number)
  
}