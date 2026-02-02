output "flask_public_ip" {
  value = aws_instance.flask_server.public_ip
}

output "express_public_ip" {
  value = aws_instance.express_server.public_ip
}
