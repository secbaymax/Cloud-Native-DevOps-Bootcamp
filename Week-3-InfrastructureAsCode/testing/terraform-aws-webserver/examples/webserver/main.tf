terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.7"
        }
    }
}

provider "aws" {
    region = var.region
  
}

module "webserver" {
    source = "C:/Users/BTIRCASRVM04User01/Documents/Project/Cloud-Native-DevOps-Bootcamp/Week-3-InfrastructureAsCode/testing/terraform-aws-webserver"
  
    servername = var.servername
    size = "t3.micro"
}