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

