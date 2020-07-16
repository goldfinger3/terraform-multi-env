variable "subnet_map" {
  description = "A map from environment to a comma-delimited list of the subnets"
  type = map

default = {
    dev     = "subnet-c59403abe,subnet-69483bdb33c"
    qa      = "subnet-e48unjd9a1,subnet-c085uhd93a4"
    staging = "subnet-65489uuhfn9,subnet-448hjdh86b",
    prod    = "subnet-6dfjn2344f,subnet-0f4u3bjbd47"
  }
}

variable "instance_type_map" {
  # az vm list-skus -l westeurope -o table
  description = "A map from environment to the type of Azure instance"
  type = map
  default = {
    small  = "Standard_B1s"
    medium = "Standard_B1ms"
    large  = "Standard_B2s"
    xlarge = "Standard_B2ms"
  }
}

