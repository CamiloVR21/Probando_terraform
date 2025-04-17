resource "aws_security_group" "nginx-server-sg" {

    name = "${var.server_name}-sg"
    description = "Permite ssh y http access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = {
    Name= "${var.server_name}-sg"
    Enviroment= var.Enviroment
    Owner= "camilo12.vr@gmail.com"
    Team= "DevOps"
    
  }
}