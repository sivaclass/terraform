variable "ami" {
  default ="ami-0f3c7d07486cad139"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "sg-name" {
  type = string
  default = "allow-all-terraform"
}
variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}
variable "tags" {
  type = "map"
  default = {
    Name = "web"
    Environment = "DEV"
    terraform = "true"
}
}