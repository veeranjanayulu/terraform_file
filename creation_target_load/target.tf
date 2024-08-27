resource "aws_lb_target_group" "tg" {
  name     = "target-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id
  depends_on = [ aws_vpc.vpc ]

  health_check {
    path                = "/"
    protocol            = "HTTP"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
    
  }
}
