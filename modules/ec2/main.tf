resource "aws_instance" "laz-tf-test" {
    instance_type = "t2.micro"
    ami = var.image_id
    tags = {
        Name = var.instance_name
    }
    vpc_security_group_ids = [ aws_security_group.laz-tf-sg-default.id ]
}
