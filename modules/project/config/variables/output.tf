output "subnets" {
  value = ["${split(",", var.subnet_map[var.environment])}"]
}

output "instance_type" {
  value = "${var.instance_type_map[var.size]}"
}