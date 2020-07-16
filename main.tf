

locals {
  environment = "${lookup(var.workspace_to_environment_map, terraform.workspace, "dev")}"
  size = "${local.environment == "dev" ? lookup(var.workspace_to_size_map, terraform.workspace, "small") : var.environment_to_size_map[local.environment]}"
}

module "variables" {
  source = "./modules/project/config/variables"
  environment = "${local.environment}"
  size        = "${local.size}"
}



