output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.node_server.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.node_server.id
}
