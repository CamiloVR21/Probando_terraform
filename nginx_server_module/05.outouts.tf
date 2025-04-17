output "server_public_ip" {

    description = "DirecciónIP"
    value = aws_instance.nginx-server.public_ip
  
}

output "server_public_dns" {

    description = "DirecciónIP"
    value = aws_instance.nginx-server.public_dns
  
}