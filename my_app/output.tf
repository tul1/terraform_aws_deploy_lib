output "elb" {
  value = aws_elb.myapp-elb.dns_name
}

output "ecs-cluster" {
  value = aws_ecs_cluster.example-cluster.id
}

output "ec2_intance" {
  value = aws_instance.my_instance.*.public_ip
}
