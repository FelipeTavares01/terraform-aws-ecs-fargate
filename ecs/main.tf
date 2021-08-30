resource "aws_ecs_cluster" "ecs_cluster" {
  name               = var.ecs_cluster_name
  capacity_providers = var.ecs_capacity_providers
  tags = {
    Name = var.ecs_cluster_name
  }

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_task_definition" "app_task" {
  family                   = var.ecs_family_name
  network_mode             = "awsvpc"
  requires_compatibilities = [var.ecs_launch_type]
  task_role_arn            = var.ecs_task_role_arn
  execution_role_arn       = var.ecs_execution_role_arn
  cpu                      = var.ecs_task_cpu
  memory                   = var.ecs_task_memory
  container_definitions = jsonencode([
    {
      name      = var.ecs_container_name
      image     = var.ecs_container_image
      cpu       = var.ecs_container_cpu
      memory    = var.ecs_container_memory
      essential = true
      portMappings = [
        {
          containerPort = var.ecs_container_port
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "ecs_service" {
  name                               = var.ecs_service_name
  cluster                            = aws_ecs_cluster.ecs_cluster.id
  task_definition                    = aws_ecs_task_definition.app_task.arn
  desired_count                      = var.ecs_desired_count
  deployment_minimum_healthy_percent = var.ecs_deployment_min_healthy_percent
  health_check_grace_period_seconds  = var.ecs_health_check_grace_period_seconds
  launch_type                        = var.ecs_launch_type

  network_configuration {
    subnets          = var.subnets
    security_groups  = [var.sg_ecs_service]
    assign_public_ip = true
  }

  lifecycle {
    ignore_changes = [desired_count]
  }

  load_balancer {
    target_group_arn = var.target_group_arn
    container_name   = var.ecs_container_name
    container_port   = var.ecs_container_port
  }

  tags = {
    Name = var.ecs_service_name
  }
}