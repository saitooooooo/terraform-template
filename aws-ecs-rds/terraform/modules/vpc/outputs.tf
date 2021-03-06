output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr_block" {
  value = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "private_subnet_cidr_block" {
  value = aws_subnet.private[*].cidr_block
}

output "public_route_table_ids" {
  value = aws_route_table.public[*].id
}