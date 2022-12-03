provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""  
}

variable "mystringvar" {
    type = string
    default = "my-first-vpc"
}

variable "mynumvar" {
    type = number
    default = 100
}

variable "myboolvar" {
    default = false
}

variable "mylistvar" {
    type = list(string)
    default = ["one", "two", "three"]
}

variable "mymapvar" {
    type = map
    default = {
        "key1" = "value1"
        "key2" = "value2"
    }
}

variable "myinputvat" {
    type = string
    description = "plz enter a vpc name"
}

resource "aws_vpc" "myVPC" {
    cidr_block = "10.10.10.0/24"

    tags = {
        Name = var.mylistvar[0]
    }
}
