resource "aws_security_group" "sg_loadbalancer" {
  name        = var.sg_alb_name
  description = var.sg_alb_description
  vpc_id      = var.vpc_id

  ingress {
    description = var.sg_alb_ingress_description
    from_port   = var.sg_alb_ingress_from_port
    to_port     = var.sg_alb_ingress_to_port
    protocol    = var.sg_alb_ingress_protocol
    cidr_blocks = var.sg_alb_ingress_cidr_blocks
  }

  egress {
    description = var.sg_alb_egress_description
    from_port   = var.sg_alb_egress_from_port
    to_port     = var.sg_alb_egress_to_port
    protocol    = var.sg_alb_egress_protocol
    cidr_blocks = var.sg_alb_egress_cidr_blocks
  }

  tags = {
    Name = var.sg_alb_name
  }
}

resource "aws_security_group" "sg_ecs_service" {
  name        = var.sg_ecs_name
  description = var.sg_ecs_description
  vpc_id      = var.vpc_id

  ingress {
    description = var.sg_ecs_ingress_description
    from_port   = var.sg_ecs_ingress_from_port
    to_port     = var.sg_ecs_ingress_to_port
    protocol    = var.sg_ecs_ingress_protocol
    cidr_blocks = [aws_security_group.sg_loadbalancer.id]
  }

  egress {
    description = var.sg_ecs_egress_description
    from_port   = var.sg_ecs_egress_from_port
    to_port     = var.sg_ecs_egress_to_port
    protocol    = var.sg_ecs_egress_protocol
    cidr_blocks = var.sg_ecs_egress_cidr_blocks
  }

  tags = {
    Name = var.sg_ecs_name
  }
}