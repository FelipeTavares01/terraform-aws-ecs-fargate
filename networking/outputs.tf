output "security_group_alb_id" {
  value = aws_security_group.sg_loadbalancer.id
}

output "security_group_alb_arn" {
  value = aws_security_group.sg_loadbalancer.arn
}

output "security_group_ecs_id" {
  value = aws_security_group.sg_ecs_service.id
}

output "security_group_ecs_arn" {
  value = aws_security_group.sg_ecs_service.arn
}