provider "aws" {
  version = "~> 2.7"
  region  = "us-east-1"
}

resource "aws_instance" "web" {  
  ami = "ami-059137e7b91df5d58"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = "${aws_instance.web.public_ip}"
}
