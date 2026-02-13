variable "aws_region" {}
variable "cluster_name" {}
variable "cluster_version" {}
variable "instance_type" {}
variable "min_size" {}
variable "max_size" {}
variable "desired_capacity" {}

variable "vpc_id" {}
variable "private_subnets" {
  type = list(string)
}
