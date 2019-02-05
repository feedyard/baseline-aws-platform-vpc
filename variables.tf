terraform {
  required_version = "= 0.11.11"

  backend "s3" {}
}

provider "aws" {
  version = "~> 1.57"
  region  = "${var.cluster_region}"
}

variable "cluster_name" {}
variable "cluster_region" {}

variable "cluster_vpc_name" {}

variable "cluster_cidr_reservation_start" {}

variable "cluster_azs" {
  type = "list"
}

variable "cluster_enable_nat_gateway" {}
