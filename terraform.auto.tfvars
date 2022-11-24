region= ["ap-south-1"]

vpc = [
  {
    ip = "11.0.0.0/16"
    name = "hcl-sap-vpc-d-cp"
    enable_dns_support = true
    enable_dns_hostnames = true
    instance_tenancy = "default
  }
]
