output "cluster_name" {
  value = var.cluster_name
}

output "alb_dns_name" {
  value = module.loadbalancer.alb_dns_name
}