resource "aws_s3_bucket" "my-bucket" {
    #args
    bucket = "arh-practice-devops"
    tags = {
        Name = "arh-practice-devops"
    }
}
