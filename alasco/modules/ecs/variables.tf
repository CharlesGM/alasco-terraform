variable "cluster_name" {
  description = "Name of the ECS cluster."
  type        = string
}

variable "cpu" {
  type        = string
  description = "The number of cpu units used by the task."
  default     = "512"
}

variable "memory" {
  type        = string
  description = "The amount of memory (in MiB) used by the task."
  default     = "1024"
}
variable "task_family" {
  description = "Family of the ECS task definition."
  type        = string
}

variable "container_image" {
  description = "Docker image for the ECS container."
  type        = string
}

variable "desired_count" {
  description = "Number of desired ECS tasks."
  type        = number
}

variable "subnet_ids" {
  description = "List of subnet IDs."
  type        = list(string)
}

variable "security_group_id" {
  description = "ID of the Security Group."
  type        = string
}

variable "target_group_arn" {
  description = "ARN of the target group."
  type        = string
}

variable "service_name" {
  description = "Name of the ECS service."
  type        = string
}

variable "execution_role_arn" {
  description = "ARN of the ECS task execution role."
  type        = string
}

variable "task_role_arn" {
  description = "ARN of the ECS task role."
  type        = string
}
