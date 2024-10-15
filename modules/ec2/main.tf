resource "aws_instance" "laz-tf-test" {
    instance_type = "t2.micro"
    ami = var.ec2_ami
}
