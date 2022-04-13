module "vpc" {
    source  = "app.terraform.io/pkjkprasad/network/google"
"
    version = "~> 3.0"

    project_id   = var.project
    network_name = "pkjk-vpc"
    routing_mode = "GLOBAL"

subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}