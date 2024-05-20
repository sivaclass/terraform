resource "aws_instance" "server" {
  #count = 3
  count = length(var.instance_name)
  ami   = var.ami
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.instance_name[count.index]
  }
}