resource "aws_ecs_cluster" "ecs_cluster" {
  name               = var.cluster_name
  capacity_providers = var.capacity_providers
  tags = {
    Name = var.cluster_name
  }

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_task_definition" "app_task" {
  family                   = var.family_name
  network_mode             = "awsvpc"
  requires_compatibilities = [var.launch_type]
  task_role_arn            = var.task_role_arn
  execution_role_arn       = var.execution_role_arn
  cpu                      = var.task_cpu
  memory                   = var.task_memory
  container_definitions = jsonencode([
    {
      name      = var.container_name
      image     = var.container_image
      cpu       = var.container_cpu
      memory    = var.container_memory
      essential = true
      portMappings = [
        {
          containerPort = var.container_port
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "ecs_service" {
  name                               = var.ecs_service_name
  cluster                            = aws_ecs_cluster.ecs_cluster.id
  task_definition                    = aws_ecs_task_definition.app_task.arn
  desired_count                      = var.desired_count
  deployment_minimum_healthy_percent = var.deployment_min_healthy_percent
  health_check_grace_period_seconds  = var.health_check_grace_period_seconds
  launch_type                        = var.launch_type

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
    container_name   = var.container_name
    container_port   = var.container_port
  }

  tags = {
    Name = var.ecs_service_name
  }
}