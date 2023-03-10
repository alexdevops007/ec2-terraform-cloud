provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "VM_Ec2" {
  ami = "ami-0a3eea5b2e98895da"
  instance_type = "t2.micro"
  key_name = "newKey"
  
  tags = {
    Name = "ec2-machine-deploy"
  }
  root_block_device {
    delete_on_termination = true
  }
}
