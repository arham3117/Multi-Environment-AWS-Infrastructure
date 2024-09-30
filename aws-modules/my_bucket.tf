# S3 Bucket

resource "aws_s3_bucket" "my-bucket" {
    #args
    bucket = "${var.my-env}-arh-practice-devops"
    tags = {
        Name = "${var.my-env}-arh-practice-devops"
        environment = var.my-env
    }
}
