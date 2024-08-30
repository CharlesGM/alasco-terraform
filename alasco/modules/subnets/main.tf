resource "aws_subnet" "public" {
  count = var.subnet_count
  vpc_id = var.vpc_id
  cidr_block = cidrsubnet(var.vpc_cidr_block, 8, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
  map_public_ip_on_launch = true
}

data "aws_availability_zones" "available" {}
