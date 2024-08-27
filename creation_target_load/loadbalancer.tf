resource "aws_lb" "alb" {
  name               = "ALB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.secure.id]
  subnets            = [aws_subnet.public.id,aws_subnet.public2.id]
  

  tags = {
    Name = "loadblancer"
  }
}
