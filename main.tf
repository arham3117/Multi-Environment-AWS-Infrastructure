module "dev-app" {
    source = "./aws-modules"
    my-env = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-085f9c64a9b75eed5"
    instance_count = 1
}

module "stg-app" {
    source = "./aws-modules"
    my-env = "stg"
    instance_type = "t2.medium"
    ami_id = "ami-085f9c64a9b75eed5"
    instance_count = 2
}

module "prd-app" {
    source = "./aws-modules"
    my-env = "prd"
    instance_type = "t2.large"
    ami_id = "ami-085f9c64a9b75eed5"
    instance_count = 3
}