output "alb_dns_name" {
  value = aws_lb.application_loadbalancer.dns_name
}

output "tg_arn" {
  value = aws_lb_target_group.tg_alb.arn
}

