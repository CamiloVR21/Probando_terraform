##################variables##################

variable "ami_id" {
    description = "ID de la AMI de la instacia EC2"
    default     = "ami-0440d3b780d96b29d"
}

variable "instance_type" {
    description = "Tipo de la instacia EC2"
    default     = "t3.micro"
}

variable "server_name" {
    description = "Nombre de la instacia EC2"
    default     = "nginx-server"
}

variable "Enviroment" {
    description = "Ambiente de la instacia EC2"
    default     = "test"
}