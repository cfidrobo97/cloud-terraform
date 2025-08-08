variable "instancias" {
  description = "nombre de las instancias"
  type = list(string)   //si pongo lista en el for each debe ir to set
  default = [ "apache" ]
  
}

resource "aws_instance" "public_instance" {
  for_each = toset(var.instancias) //de esta manera
  ami           = var.ec2_specs.ami
  instance_type = var.ec2_specs.instance_type
  subnet_id = aws_subnet.public_subnet.id
  key_name = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data = file("scripts/userdata.sh")
  tags = {
    "Name" = "${each.value}-${local.sufix}"
  }

}


resource "aws_instance" "monitoring_instance" {
  count = var.enable_monitoring == 1 ? 1:0  //si es igual a 1 entonces es true si 0 es false
  ami           = var.ec2_specs.ami
  instance_type = var.ec2_specs.instance_type
  subnet_id = aws_subnet.public_subnet.id
  key_name = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data = file("scripts/userdata.sh")
  tags = {
    "Name" = "Monitoreo-${local.sufix}"
  }

}