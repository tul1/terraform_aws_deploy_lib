output "elb" {
  value = aws_elb.myapp-elb.dns_name
}

output "ecs-cluster" {
  value = aws_ecs_cluster.example-cluster.id
}
