variable "lb_name" {
  type = string
}

variable "is_internal" {
  type = bool
}

variable "security_groups" {
  type = list(string)
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

variable "listener_port" {
  type = number
}

variable "listener_protocol" {
  type = string
}

variable "listener_type" {
  type = string
}
