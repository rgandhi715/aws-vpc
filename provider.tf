locals {
  region = var.region[0]
}

provider "aws" {
  #profile = "dev"
  #count   = length(var.region)
  #alias   = element(var.region, count.index)
  region  = local.region
}