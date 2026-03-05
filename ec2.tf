# Find the latest Ubuntu 24.04 AMI automatically
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}

# Your Key Pair
resource "aws_key_pair" "name" {
  key_name   = "terra-key"
  public_key = file("terra-key.pub")
}

# Your Security Group
resource "aws_security_group" "twssecurity" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# THE MAIN RESOURCE: Your EC2 Instance
resource "aws_instance" "my_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type # Pulls from variables.tf
  
  key_name      = aws_key_pair.name.key_name
  vpc_security_group_ids = [aws_security_group.twssecurity.id]

  tags = {
    Name = "${var.project_name}-Instance" # Uses project_name variable
  }
}