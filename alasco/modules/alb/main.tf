resource "aws_lb" "main" {
  name                               = var.alb_name
  internal                           = false
  load_balancer_type                 = "application"
  security_groups                    = [var.security_group_id]
  subnets                            = var.subnet_ids
  enable_deletion_protection         = false
  enable_cross_zone_load_balancing   = true
}

# Listener on port 80
resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main.arn
  port              = 80                 # Change this to port 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
}

# Target group for backend instances listening on port 8080
resource "aws_lb_target_group" "main" {
  name     = var.target_group_name
  port     = 8080
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  target_type = "ip"

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }
}

# Listener rule to forward all traffic to the target group
resource "aws_lb_listener_rule" "forward_to_target_group" {
  listener_arn = aws_lb_listener.http.arn
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }

  condition {
    path_pattern {
      values = ["*"]
    }
  }
}
