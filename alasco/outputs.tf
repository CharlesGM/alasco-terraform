output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway."
  value       = module.internet_gateway.id
}

output "route_table_id" {
  description = "The ID of the route table."
  value       = module.route_table.id
}

output "security_group_id" {
  description = "The ID of the security group."
  value       = module.security_group.id
}

output "ecs_cluster_id" {
  description = "The ID of the ECS cluster."
  value       = module.ecs.cluster_id
}

output "alb_arn" {
  description = "The ARN of the Application Load Balancer."
  value       = module.alb.alb_arn
}

output "ecs_service_id" {
  value = module.ecs.service_id
}

output "execution_role_arn" {
  description = "ARN of the ECS execution role."
  value       = module.iam_role.execution_role_arn
}

output "task_role_arn" {
  description = "ARN of the ECS task role."
  value       = module.iam_role.task_role_arn
}