#######Modulos#########
#1.-terraform plan -out server_dev.tfplan
#2.-terraform apply "server_dev.tfplan"

terraform {
  backend "s3" {
    bucket = "terraform-nginx-4648"
    key = "probando_terraform/terraform.tfstate"
    region = "us-east-1"
    
  }
}

module "nginx_serser_dev" {

    source = "./nginx_server_module"

    ami_id= "ami-0440d3b780d96b29d"
    instance_type = "t3.medium"
    server_name = "nginx-server-dev"
    Enviroment = "dev"
    
}

output "nginx_dev_ip" {

    description = "DirecciónIP"
    value = module.nginx_serser_dev
  
}

output "nginx_dev_dns" {

    description = "DirecciónIP"
    value = module.nginx_serser_dev
  
}