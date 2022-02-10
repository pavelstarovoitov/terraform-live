/*data "aws_instances" "example" {
  instance_tags = {
    Name = "terraform-asg-example"
  }
}

output "private-ips" {
  value = "${data.aws_instances.example.private_ips}"
}

output "public-ips" {
  value = "${data.aws_instances.example.public_ips}"
}*/

output "alb_dns_name" {
     value           = module.webserver_cluster.alb_dns_name
     description     = "The domain name of the load balancer"
}