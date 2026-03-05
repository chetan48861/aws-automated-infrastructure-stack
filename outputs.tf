# This will print your Server's Public IP
output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.my_server.public_ip
}

# This will print your Server's ID
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my_server.id
}

# This will print your DynamoDB Table Name
output "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  value       = aws_dynamodb_table.my_table.name
}