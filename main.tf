resource "aws_vpc" "eks_vpc" {
  count                 = length(var.vpc)
  cidr_block            = var.vpc[count.index].ip
  enable_dns_support    = var.vpc[count.index].enable_dns_support
  enable_dns_hostnames  = var.vpc[count.index].enable_dns_hostnames
  instance_tenancy      = var.vpc[count.index].instance_tenancy

  tags = {
    Name = var.vpc[count.index].name
  }
}
