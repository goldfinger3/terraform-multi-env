output "myenv" {
    value = local.environment
}

output "mysize" {
    value = local.size
}

output "machine" {
    value = module.variables.instance_type
}

output "subnets" {
    value = module.variables.subnets
}