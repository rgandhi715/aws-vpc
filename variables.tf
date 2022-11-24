variable "region" {
  type = list(string)
}

variable "vpc" {
  type = list(object({
    ip = string
    name = string
    enable_dns_support = bool
    enable_dns_hostnames = bool
    instance_tenancy = string
  }))
}