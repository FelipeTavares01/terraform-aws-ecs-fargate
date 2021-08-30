variable "ecs_cluster_name" {
  type = string
}

variable "ecs_capacity_providers" {
  type = list(string)
}

variable "ecs_family_name" {
  type = string
}

variable "ecs_launch_type" {
  type = string
}

variable "ecs_task_role_arn" {
  type = string
}

variable "ecs_execution_role_arn" {
  type = string
}

variable "ecs_task_cpu" {
  type = number
}

variable "ecs_task_memory" {
  type = number
}

variable "ecs_container_name" {
  type = string
}

variable "ecs_container_image" {
  type = string
}

variable "ecs_container_cpu" {
  type = number
}

variable "ecs_container_memory" {
  type = number
}

variable "ecs_container_port" {
  type = number
}

variable "ecs_service_name" {
  type = string
}

variable "sg_ecs_service" {
  type = string
}

variable "ecs_desired_count" {
  type = number
}

variable "ecs_deployment_min_healthy_percent" {
  type = number
}

variable "ecs_health_check_grace_period_seconds" {
  type = number
}

variable "subnets" {
  type = list(string)
}

variable "target_group_arn" {
  type = string
}