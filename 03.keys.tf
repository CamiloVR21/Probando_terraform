#Se debe ejecutar esto para la KEY
#ssh-keygen -t rsa -b 2048 -f "nginx-server.key"
#Conectarse a la máquina con la clave publica
#ssh ec2-user@44.214.119.173 -i .\nginx-server.key

resource "aws_key_pair" "nginx-server-ssh" {

    key_name = "${var.server_name}-ssh"
    public_key = file("${var.server_name}.key.pub")

    tags = {
    Name= "${var.server_name}-ssh"
    Enviroment= var.Enviroment
    Owner= "camilo12.vr@gmail.com"
    Team= "DevOps"
    
  }
  
}