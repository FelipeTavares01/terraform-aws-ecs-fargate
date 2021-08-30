variable "aws_region" {
  type = string
}

variable "subnets" {
  type = list(string)
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "sg_alb_name" {
  type = string
}

variable "sg_alb_description" {
  type = string
}


variable "sg_alb_ingress_description" {
  type = string
}

variable "sg_alb_ingress_from_port" {
  type = number
}

variable "sg_alb_ingress_to_port" {
  type = number
}

variable "sg_alb_ingress_protocol" {
  type = string
}

variable "sg_alb_ingress_cidr_blocks" {
}

variable "sg_alb_egress_description" {
  type = string
}

variable "sg_alb_egress_from_port" {
  type = number
}

variable "sg_alb_egress_to_port" {
  type = number
}

variable "sg_alb_egress_protocol" {
  type = string
}

variable "sg_alb_egress_cidr_blocks" {
  type = list(string)
}

variable "sg_ecs_name" {
  type = string
}

variable "sg_ecs_description" {
  type = string
}

variable "sg_ecs_ingress_description" {
  type = string
}

variable "sg_ecs_ingress_from_port" {
  type = number
}

variable "sg_ecs_ingress_to_port" {
  type = number
}

variable "sg_ecs_ingress_protocol" {
  type = string
}

variable "sg_ecs_egress_description" {
  type = string
}

variable "sg_ecs_egress_from_port" {
  type = number
}

variable "sg_ecs_egress_to_port" {
  type = number
}

variable "sg_ecs_egress_protocol" {
  type = string
}

variable "sg_ecs_egress_cidr_blocks" {
  type = list(string)
}

variable "alb_name" {
  type = string
}

variable "alb_is_internal" {
  type = bool
}

variable "alb_idle_timeout" {
  type = number
}

variable "tg_name" {
  type = string
}

variable "tg_port" {
  type = number
}

variable "tg_protocol" {
  type = string
}

variable "tg_type" {
  type = string
}

variable "tg_deregistration_delay" {
  type = number
}

variable "tg_healthy_threshold" {
  type = number
}

variable "tg_unhealthy_threshold" {
  type = number
}

variable "tg_health_check_interval" {
  type = number
}

variable "tg_health_check_path" {
  type = string
}

variable "tg_health_check_port" {
  type = number
}

variable "tg_health_check_protocol" {
  type = string
}

variable "tg_health_check_timeout" {
  type = number
}

variable "alb_listener_port" {
  type = number
}

variable "alb_listener_protocol" {
  type = string
}

variable "alb_listener_type" {
  type = string
}

variable "asg_max_size" {
  type = number
}

variable "asg_min_size" {
  type = number
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

variable "ecs_capacity_providers" {
  type = list(string)
}

variable "ecs_family_name" {
  type = string
}

variable "ecs_launch_type" {
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

variable "ecs_desired_count" {
  type = number
}

variable "ecs_deployment_min_healthy_percent" {
  type = number
}

variable "ecs_health_check_grace_period_seconds" {
  type = number
}

variable "ecs_task_role_arn" {
  type = string
}

variable "ecs_execution_role_arn" {
  type = string
}