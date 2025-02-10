output "public_ips" {
  value = {
    for idx, instance in aws_instance.web_server :
    idx => instance.public_ip
  }
}