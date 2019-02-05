module "cluster_vpc" {
  #source = "github.com/feedyard/tf-aws-platform-vpc?ref=1.0.0"
  source = "github.com/feedyard/tf-aws-platform-vpc?ref=2.0.2"

  name                   = "${var.cluster_vpc_name}"
  cluster_name           = "${var.cluster_name}"
  cidr_reservation_start = "${var.cluster_cidr_reservation_start}"
  azs                    = "${var.cluster_azs}"

  enable_nat_gateway = "${var.cluster_enable_nat_gateway}"

  tags {
    "pipeline" = "feedyard/baseline-platform-aws-resources"
  }
}
