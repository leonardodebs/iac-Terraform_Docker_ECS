resource "aws_lb" "alb" {
  name               = "ECS-Django"
  security_groups    = [aws_security_group.alb.id]
  subnets            = module.vpc.public_subnets
}

resource "aws_lb_target_group" "alvo" {
  name        = "ECS-Django"
  port        = 8000
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = module.vpc.vpc_id
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 8000
  protocol          = "HTTP"

  # Ação 'forward' para encaminhar tráfego para o target group
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alvo.arn
  }
}

output "IP" {
  value = aws_lb.alb.dns_name
}
