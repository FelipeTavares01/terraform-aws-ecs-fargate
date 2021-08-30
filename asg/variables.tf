variable "asg_max_size" {
  type = number
}

variable "asg_min_size" {
  type = number
}

variable "asg_policy_name" {
  type = string
}

variable "asg_scale_in_cooldown_cpu" {
  type = number
}

variable "asg_scale_out_cooldown_cpu" {
  type = number
}

variable "asg_target_cpu_value" {
  type = number
}

variable "asg_scale_in_cooldown_memory" {
  type = number
}

variable "asg_scale_out_cooldown_memory" {
  type = number
}

variable "asg_target_memory_value" {
  type = number
}

variable "ecs_cluster_name" {
  type = string
}

variable "ecs_service_name" {
  type = string
}