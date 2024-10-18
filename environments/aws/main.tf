module "ec2" {
    source = "../../modules/ec2"
    image_id = var.image_id
    instance_name = var.instance_name
}

output "public_ip" {
    value = module.ec2.public_ip
}
