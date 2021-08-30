variable "alb_name" {
  type = string
}

variable "alb_is_internal" {
  type = bool
}

variable "security_groups" {
  type = list(string)
}

variable "subnets" {
  type = list(string)
}

variable "alb_idle_timeout" {
  type = number
}

variable "environment" {
  type = string
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

variable "vpc_id" {
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
