# locals {
#   Name = "siva"
#   type = var.instance_name[count.index] == "mongodb" ? "t3.micro" : "t2.micro"
# }
locals {
  instance_type = var.instance_name[count.index] == "mongodb" ? "t3.micro" : "t2.micro"
}
