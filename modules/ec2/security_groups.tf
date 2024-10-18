resource "aws_security_group" "laz-tf-sg-default" {
    name = "laz-tf-sg-default"
    tags = {
      Name = "laz-tf-sg-default"
    }
}

resource "aws_vpc_security_group_ingress_rule" "laz-tf-sgir-allow-ssh" {
    description = "Allow incoming SSH traffic"
    from_port = 22
    to_port = 22
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "tcp"
    security_group_id = aws_security_group.laz-tf-sg-default.id
}

resource "aws_vpc_security_group_ingress_rule" "laz-tf-sgir-allow-80" {
    description = "Allow incoming WEB traffic"
    from_port = 80
    to_port = 80
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "tcp"
    security_group_id = aws_security_group.laz-tf-sg-default.id
}
resource "aws_vpc_security_group_egress_rule" "laz-tf-sger-allow-all" {
    description = "Allow ALL outgoing traffic"
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = -1
    security_group_id = aws_security_group.laz-tf-sg-default.id
}
