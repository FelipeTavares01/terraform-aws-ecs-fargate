resource "aws_lb" "application_loadbalancer" {
  name                       = var.alb_name
  internal                   = var.alb_is_internal
  load_balancer_type         = "application"
  security_groups            = var.security_groups
  subnets                    = var.subnets
  idle_timeout               = var.alb_idle_timeout
  enable_deletion_protection = false

  tags = {
    Environment = var.environment
  }
}

resource "aws_lb_target_group" "tg_alb" {
  name                 = var.tg_name
  port                 = var.tg_port
  protocol             = var.tg_protocol
  vpc_id               = var.vpc_id
  target_type          = var.tg_type
  deregistration_delay = var.tg_deregistration_delay

  lifecycle {
    ignore_changes        = [name]
    create_before_destroy = true
  }

  health_check {
    healthy_threshold   = var.tg_healthy_threshold
    unhealthy_threshold = var.tg_unhealthy_threshold
    interval            = var.tg_health_check_interval
    path                = var.tg_health_check_path
    port                = var.tg_health_check_port
    protocol            = var.tg_health_check_protocol
    timeout             = var.tg_health_check_timeout
  }

  tags = {
    Name = var.tg_name
  }
}

resource "aws_lb_listener" "listener_alb" {
  load_balancer_arn = aws_lb.application_loadbalancer.arn
  port              = var.alb_listener_port
  protocol          = var.alb_listener_protocol

  default_action {
    type             = var.alb_listener_type
    target_group_arn = aws_lb_target_group.tg_alb.arn
  }
}