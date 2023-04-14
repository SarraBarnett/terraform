output "public_ip" {
  value = module.server.public_ip
}
output "public_dns" {
  value = module.server.public_dns
}

output "size" {
  value = module.server.size
}

output "public_ip_server_subnet_1" {
  value = module.server_subnet_1.public_ip
}
output "public_dns_server_subnet_1" {
  value = module.server_subnet_1.public_dns
}

output "ec2_instance_arn" {
  value     = aws_instance.web_server.arn
  sensitive = true
}