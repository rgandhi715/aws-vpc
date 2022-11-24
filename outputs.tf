output "vpc_id" {
  description = "Id of Vnet"
  value       = aws_vpc.eks_vpc.*.id
}
