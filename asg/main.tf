resource "aws_appautoscaling_target" "ecs_target" {
  max_capacity       = var.asg_max_size
  min_capacity       = var.asg_min_size
  resource_id        = "service/${var.ecs_cluster_name}/${var.ecs_service_name}"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = "ecs"
}

resource "aws_appautoscaling_policy" "ecs_policy_cpu" {
  name               = "${var.asg_policy_name}-scale-cpu"
  policy_type        = "TargetTrackingScaling"
  resource_id        = aws_appautoscaling_target.ecs_target.resource_id
  scalable_dimension = aws_appautoscaling_target.ecs_target.scalable_dimension
  service_namespace  = aws_appautoscaling_target.ecs_target.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageCPUUtilization"
    }

    target_value       = var.asg_target_cpu_value
    scale_in_cooldown  = var.asg_scale_in_cooldown_cpu
    scale_out_cooldown = var.asg_scale_out_cooldown_cpu
  }
}

resource "aws_appautoscaling_policy" "ecs_policy_memory" {
  name               = "${var.asg_policy_name}-scale-memory"
  policy_type        = "TargetTrackingScaling"
  resource_id        = aws_appautoscaling_target.ecs_target.resource_id
  scalable_dimension = aws_appautoscaling_target.ecs_target.scalable_dimension
  service_namespace  = aws_appautoscaling_target.ecs_target.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageMemoryUtilization"
    }

    target_value       = var.asg_target_memory_value
    scale_in_cooldown  = var.asg_scale_in_cooldown_memory
    scale_out_cooldown = var.asg_scale_out_cooldown_memory
  }
}