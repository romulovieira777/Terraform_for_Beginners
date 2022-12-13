provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""  
}

resource "aws_instance" "EC2" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.mySG.name]
}

resource "aws_eip" "MyEIP" {
    instance = aws_instance.EC2.id
}

resource "aws_security_group" "mySG" {
    name = "Allow HTTPS"

    ingress {
        description = "Allow HTTPS from any where"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress = {
        description = "Allow HTTPS from any where"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

output "myOutEIP" {
    value = aws_eip.MyEIP.public_ip  
}
