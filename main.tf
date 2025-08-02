provider "aws" {
  region = "us-east-1" # Choose your preferred region
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0" # An Amazon Linux 2 AMI
  instance_type = "t2.micro"             # Free-tier eligible

  tags = {
    Name = "MyWebAppServer"
  }
}