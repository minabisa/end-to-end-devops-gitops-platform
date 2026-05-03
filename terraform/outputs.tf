output "devops_server_public_ip" {
  description = "Public IP address of Ubuntu DevOps server"
  value       = aws_instance.devops_server.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to Ubuntu server"
  value       = "ssh -i ~/.ssh/devops-key.pem ubuntu@${aws_instance.devops_server.public_ip}"
}
