module "mysql" {
  source         = "git::https://github.com/B59-CloudDevOps/tf-module-app.git"
  env            = var.env
  intance_type   = ""
  zone_id        = ""
  name           = ""
  port_no        = ""
  port_no_of_ssh = ""
}

module "backend" {
  source         = "git::https://github.com/B59-CloudDevOps/tf-module-app.git"
  env            = var.env
  intance_type   = ""
  zone_id        = ""
  name           = ""
  port_no        = ""
  port_no_of_ssh = ""
}

module "frontend" {
  source         = "git::https://github.com/B59-CloudDevOps/tf-module-app.git"
  env            = var.env
  intance_type   = ""
  zone_id        = ""
  name           = ""
  port_no        = ""
  port_no_of_ssh = ""
}