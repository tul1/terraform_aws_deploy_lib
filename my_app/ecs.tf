# cluster
resource "aws_ecs_cluster" "example-cluster" {
  name = "example-cluster"
}

resource "aws_instance" "my_instance" {
  count = 2
  ami             = var.ECS_AMIS[var.AWS_REGION]
  instance_type   = var.ECS_INSTANCE_TYPE
  key_name        = aws_key_pair.mykeypair.key_name
  iam_instance_profile = aws_iam_instance_profile.ecs-ec2-role.id
  subnet_id       = aws_subnet.main-public-1.id
  security_groups      = [aws_security_group.ecs-securitygroup.id]
  user_data = "#!/bin/bash\necho 'ECS_CLUSTER=example-cluster' > /etc/ecs/ecs.config\nstart ecs"
}

