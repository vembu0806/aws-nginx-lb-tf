output "app_server_ips" {
  value = aws_instance.app_server[*].private_ip
}
