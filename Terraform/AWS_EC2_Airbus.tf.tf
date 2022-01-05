provider "aws" {
  access_key = "AKIA3CKT6L7BAS3C7LD"
  secret_key = "JEIwixJHpUUYLBH8HI9LiYIs8GGg0NVS0kyOap"
  region     = "us-east-2"
}

resource "aws_instance" "Ansible_Airbus" {
  ami           = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
}

resource "aws_instance" "Jenkins_Airbus" {
  ami           = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
}

resource "aws_instance" "Java_Airbus" {
  ami           = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
}
