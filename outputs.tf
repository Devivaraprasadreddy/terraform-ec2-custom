# VPC
output "vpc_id" {
  value = aws_vpc.custom_vpc.id
}

# Subnet
output "subnet_id" {
  value = aws_subnet.custom_subnet.id
}

# Internet Gateway
output "internet_gateway_id" {
  value = aws_internet_gateway.custom_igw.id
}

# Route Table
output "route_table_id" {
  value = aws_route_table.custom_rt.id
}

# Security Group
output "security_group_id" {
  value = aws_security_group.custom_sg.id
}

# Key Pair
output "key_pair_name" {
  value = aws_key_pair.terraform-ec2_key.key_name
}

output "private_key_file" {
  value = local_file.private_key_pem.filename
}

# EC2 Instance
output "instance_id" {
  value = aws_instance.custom_ec2.id
}

output "instance_public_ip" {
  value = aws_instance.custom_ec2.public_ip
}

output "instance_private_ip" {
  value = aws_instance.custom_ec2.private_ip
}

output "instance_public_dns" {
  value = aws_instance.custom_ec2.public_dns
}
