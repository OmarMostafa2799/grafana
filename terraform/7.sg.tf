####grafana###
resource "aws_security_group" "grafana" {
  name   = "security-group"
  description = "Grafana dashboard access"
  vpc_id = aws_vpc.monitoring.id

  tags = {
    Name = "grafana-sg"
  }

    ingress {
            from_port   = 443
            to_port     = 443
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
    ingress {
            from_port   = 80
            to_port     = 80
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
    ingress {
            from_port   = 3000
            to_port     = 3000
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
    ingress {
            from_port   = 22
            to_port     = 22
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
  egress {
            from_port   = 0
            to_port     = 0
            protocol    = -1
            cidr_blocks = ["0.0.0.0/0"]
        }
}


####prometheus###

resource "aws_security_group" "prometheus" {
  name   = "prometheus-sg"
  description = "Prometheus access"
  vpc_id = aws_vpc.monitoring.id

  tags = {
    Name = "Prometheus-sg"
  }

    ingress {
            from_port   = 443
            to_port     = 443
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
    ingress {
            from_port   = 80
            to_port     = 80
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
    ingress {
            from_port   = 9090
            to_port     = 9090
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
    ingress {
            from_port   = 22
            to_port     = 22
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
          }
  egress {
            from_port   = 0
            to_port     = 0
            protocol    = -1
            cidr_blocks = ["0.0.0.0/0"]
        }
}

