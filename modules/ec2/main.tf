resource "aws_instance" "laz-tf-test" {
    instance_type = "t2.micro"
    ami = "ami-0e8d228ad90af673b"
}
