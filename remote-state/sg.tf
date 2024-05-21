resource "aws_security_group" "allow_sri_all" {
  name = "allow-sri-all"
  description = "allowing all ports"
  ingress {
        description      = "Allow All ports"
        from_port        = 0 
        to_port          = 0 
        protocol         = "tcp"
        cidr_blocks      = var.cidr_blocks
        
    }

    egress {
        description      = "Allow All ports"
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
    }
    
    tags = {
      Name = "allow-sri-all"
      Environment = "Dev"
      terraform = "true"
      project   = "Roboshop"
    }
}