terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.7"
        }
    }
}

provider "aws" {
    region = "us-east-1"
  
}

module "webserver" {
    source = "C:/Users/BTIRCASRVM04User01/Documents/Project/Cloud-Native-DevOps-Bootcamp/Week-3-InfrastructureAsCode/terraform/modules/ec2"
  
    servername = "terrraformdemo"
    size = "t3.micro"
}