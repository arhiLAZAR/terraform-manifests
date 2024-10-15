module "ec2" {
    source = "../../modules/ec2"
    ec2_ami = var.ec2_ami
}

output "public_ip" {
    value = module.ec2.public_ip
}
