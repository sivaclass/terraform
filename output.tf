output "instance_ip_addr" {
  value = aws_security_group.allow_tls.id
}

output "ip" {
  value = aws_instance.server[*].public_ip
}