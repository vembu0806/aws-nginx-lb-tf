module "ec2" {
  source          = "./modules/ec2"
  instance_count  = var.instance_count
  instance_type   = var.instance_type
  ami_id          = var.ami_id
  key_name        = var.key_name
}

module "lb" {
  source        = "./modules/lb"
  backend_ips   = module.ec2.app_server_ips
  ami_id        = var.ami_id
  key_name      = var.key_name
  lb_instance_type = var.lb_instance_type
}
