output "cluster_name" {
  value = var.ecs_cluster_name
}

output "alb_dns_name" {
  value = module.loadbalancer.alb_dns_name
}