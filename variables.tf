variable "cluster_name" {
  type = string
}

variable "capacity_providers" {
  type = list(string)
}

variable "aws_region" {
  type = string
}

variable "lb_name" {
  type = string
}

variable "is_internal" {
  type = bool
}

variable "subnets" {
  type = list(string)
}

variable "idle_timeout" {
  type = number
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

variable "listener_port" {
  type = number
}

variable "listener_protocol" {
  type = string
}

variable "listener_type" {
  type = string
}

variable "family_name" {
  type = string
}

variable "launch_type" {
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

variable "desired_count" {
  type = number
}

variable "deployment_min_healthy_percent" {
  type = number
}

variable "health_check_grace_period_seconds" {
  type = number
}

variable "task_role_arn" {
  type = string
}

variable "execution_role_arn" {
  type = string
}