provider "aws" {
    region = "us-east-1"
}

module "ec2module" {
    source = "./EC2"
}

output "mainOutput" {
    value = module.ec2module.InsideModule
}
