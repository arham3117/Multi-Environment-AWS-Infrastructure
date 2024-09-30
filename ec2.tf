# Key pair
resource "aws_key_pair" "deployer" {
    key_name = "arh-terra-key"
    public_key = file("C:/Users/arham/DevOps - Cloud/Multi-Environment-AWS-Infrastructure/terra-key.pub")
}

# Default VPC
resource "aws_default_vpc" "default" {

}

# Security Group
resource "aws_security_group" "arhsecurity" {
    name = "Allow Ports"
    description = "This Security Group will open Ports for Ec2 Instance."
    vpc_id = aws_default_vpc.default.id  # interpolation

    # incoming traffic
    ingress {
        description = "This is for SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"] # Anywhere
    }

    # outgoing traffic
    egress {
        description = "This is for outgoing internet requests or traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"] 
    }
}

# EC2 Instance
resource "aws_instance" "my-instance" {
    ami = var.ami_id # ubuntu
    instance_type = "t2.micro" # free-tier
    key_name = aws_key_pair.deployer.key_name # key
    security_groups = [aws_security_group.arhsecurity.name] # SG
    tags = {
        Name = "terra-automate" # Name
    }
}