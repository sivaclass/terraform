# variable "ami" {
#   type = string
#   default = output.aws_ami_ids
# }
# variable "instance_type" {
#   type = string
#   default = "t2.micro"
# }
variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "instance_name" {
  type = map
  default = {
    mongodb = "t3.micro"
    web =   "t2.micro"
    catalogue   = "t2.micro"
  }

}
variable "tags" {
  type = map
  default = {
    Name = "allow-sri-all"
    Environment = "Dev"
    terraform = "true"
    project   = "Roboshop"
  }
}