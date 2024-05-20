resource "aws_security_group" "allow_tls" {
    name        = var.sg-name 
    description = "Allow TLS inbound traffic"
    

    ingress {
        description      = "Allow All ports"
        from_port        = 0 
        to_port          = 0 
        protocol         = "tcp"
        cidr_blocks      = var.cidr_blocks
        
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = var.cidr_blocks
        
    }

    tags = {
        Name = "SGG"
    }
}