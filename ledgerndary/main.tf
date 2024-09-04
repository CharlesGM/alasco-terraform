module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "subnets" {
  source         = "./modules/subnets"
  vpc_id         = module.vpc.vpc_id
  vpc_cidr_block = var.vpc_cidr_block
  subnet_count   = var.subnet_count
}

module "route_table" {
  source              = "./modules/route_table"
  vpc_id              = module.vpc.vpc_id
  internet_gateway_id = module.internet_gateway.id
  subnet_ids          = module.subnets.subnet_ids
  subnet_count        = var.subnet_count
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ecs" {
  source             = "./modules/ecs"
  cluster_name       = var.cluster_name
  task_family        = var.task_family
  container_image    = var.container_image
  desired_count      = 2
  subnet_ids         = module.subnets.subnet_ids
  security_group_id  = module.security_group.id
  target_group_arn   = module.alb.target_group_arn
  service_name       = var.service_name
  execution_role_arn = module.iam_role.execution_role_arn
  task_role_arn      = module.iam_role.task_role_arn
}
module "iam_role" {
  source = "./modules/iam_role"
  name   = "ledgerndary-ecs"
}
module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  security_group_id = module.security_group.id
  subnet_ids        = module.subnets.subnet_ids
  alb_name          = var.alb_name
  target_group_name = var.target_group_name
}
