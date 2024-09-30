# EC2 Instance

resource "aws_instance" "my-instance" {
    count = var.instance_count
    ami = var.ami_id 
    instance_type = "var.instance_type" # free-tier
    tags = {
        Name = "${var.my-env}-arh-practice-devops-instance" # Name
    }
}