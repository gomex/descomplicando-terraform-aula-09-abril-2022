variable "record_type" {
  description = "Tipo do registro DNS no route53"  
  type = string
  default = "A"
}

variable "record_ttl" {
  description = "TTL registro DNS no route53"  
  type = string
  default = "10"
}

variable "az" {
  type = string
  description = "Availability zone da AWS"
  default = "us-east-2a"
}

variable "instance_type" {
  description = "Tipo de instância EC2"  
  type = string
  default = "t3.micro"
}


variable "vpc_security_group_ids" {
  description = "Security Group ID"  
  type = list(string)
  default = ["sg-0ade73fdb498a6b47"]
}

variable "hostname" {
  description = "Nome do host"  
  type = string
  default = "hostname"
}

variable "sg_group_rule" {
  description = "Regras do Security Group"  
  type = map
  default = {
  } 
}

variable "root_block_device_volume_type" {
  description = "Tipo do volume root do EBS"  
  type = string
  default = "gp2"
}

variable "root_block_device_volume_size" {
  description = "Tamanho do volume root do EBS"  
  type = string
  default = "8"
}

variable "root_block_device_delete_on_termination" {
  description = "Se o volume deve ser destruído quando a instância é destruída"  
  type = bool
  default = true
}

variable "ami_release" {
  description = "Número da versão da release da AMI"  
  type = string
  default = "v0.7.2"
}

variable "subnet_name" {
  description = "Nome da subnet"  
  type = list
  default = ["descomplicando"]
}

variable "internal_domain" { 
  description = "Domínio interno"
  type = string 
  default = "internal.gomex.me."
} 
