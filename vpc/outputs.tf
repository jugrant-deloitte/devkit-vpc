output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.pri_subnet.*.id
}
output "az_to_private_subnet_id" {
    value = zipmap(data.aws_subnet.private.*.availability_zone, data.aws_subnet.private.*.id)
}
