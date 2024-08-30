aws_region        = "us-east-1"
vpc_cidr_block    = "10.0.0.0/16"
container_image   = "ghost:latest"
subnet_count      = "2"
alb_name          = "alasco-alb"
cluster_name      = "alasco-cluster"
service_name      = "alasco-service"
target_group_name = "alasco-target"
task_family       = "alasco-family"