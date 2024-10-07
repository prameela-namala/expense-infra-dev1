resource "aws_key_pair" "opnvpn" {
  key_name   = "opnvpn"
  public_key = file("~/.ssh/opnvpn.pub")
}


module "vpn" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  key_name = aws_key_pair.opnvpn.key_name
  name = local.resource_name
  ami = data.aws_ami.joindevops.id
  instance_type          = "t3.micro"

  monitoring             = true
  vpc_security_group_ids = [local.vpn_sg_id]
  subnet_id              = local.public_subnet_id

  tags = merge(
    var.common_tags,
    var.vpn_tags,
  )
}