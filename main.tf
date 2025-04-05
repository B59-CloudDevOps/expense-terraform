module "frontend" {
  source         = "git::https://github.com/B59-CloudDevOps/tf-module-app.git"
  env            = var.env
  intance_type   = ""
  zone_id        = ""
  name           = ""
  port_no        = ""
  port_no_of_ssh = ""

}



# variable "env" {}
# variable "instance_type" {}
# variable "name" {}
# variable "zone_id" {}
# variable "port_no" {}
# variable "port_no_of_ssh" {}