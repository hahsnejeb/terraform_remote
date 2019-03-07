resource "aws_elasticache_cluster" "elasticache_cluster" {
  count                 = "${var.apply_cache}"
  cluster_id            = "${var.cluster_id}"
  engine                = "${var.engine}"
  node_type             = "${var.node_type}"
  num_cache_nodes       = "${var.num_cache_nodes}"
  parameter_group_name  = "${var.parameter_group_name}"
  engine_version        = "${var.engine_version}"
  port                  = "${var.port}"
  subnet_group_name     = "${aws_elasticache_subnet_group.subnet-group-elasticache.name}"
  security_group_ids	= ["${data.terraform_remote_state.aws.security_groups_elc-redis}"]
}

resource "aws_elasticache_subnet_group" "subnet-group-elasticache" {
  name                  = "subnet-group-elasticache"
  subnet_ids            = ["${data.terraform_remote_state.aws.subnets}"]
}

output "elc_endpoint" {
  value = "${aws_elasticache_cluster.elasticache_cluster.cache_nodes.0.address}"
}
