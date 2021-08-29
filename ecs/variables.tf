variable "cluster_name" {
  type = string
}

variable "capacity_providers" {
  type = list(string)
}

variable "family_name" {
  type = string
}

variable "launch_type" {
  type = string
}

variable "task_role_arn" {
  type = string
}

variable "execution_role_arn" {
  type = string
}

variable "task_cpu" {
  type = number
}

variable "task_memory" {
  type = number
}

variable "container_name" {
  type = string
}

variable "container_image" {
  type = string
}

variable "container_cpu" {
  type = number
}

variable "container_memory" {
  type = number
}

variable "container_port" {
  type = number
}

variable "ecs_service_name" {
  type = string
}

variable "sg_ecs_service" {
  type = string
}

variable "desired_count" {
  type = number
}

variable "deployment_min_healthy_percent" {
  type = number
}

variable "health_check_grace_period_seconds" {
  type = number
}

variable "subnets" {
  type = list(string)
}

variable "target_group_arn" {
  type = string
}