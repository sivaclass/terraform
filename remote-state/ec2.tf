resource "aws_instance" "vijay_name" {
  for_each = var.instance_name
  ami = data.aws_ami_ids.centos8.id
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.allow_sri_all.id]

  tags = {
     Name = each.key
  } 
}