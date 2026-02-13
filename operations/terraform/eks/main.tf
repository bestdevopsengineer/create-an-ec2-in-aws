
terraform {
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.aws_region
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  eks_managed_node_groups = {
    default = {
      instance_types = [var.instance_type]
      min_size       = var.min_size
      max_size       = var.max_size
      desired_size   = var.desired_capacity
    }
  }
}
