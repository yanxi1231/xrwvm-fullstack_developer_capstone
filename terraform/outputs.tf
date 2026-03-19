output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.dealership.public_ip
}

output "app_url" {
  description = "URL to access the application"
  value       = "http://${aws_instance.dealership.public_ip}:8000"
}

output "ssh_command" {
  description = "SSH command to connect to the instance"
  value       = "ssh -i <your-key>.pem ec2-user@${aws_instance.dealership.public_ip}"
}
