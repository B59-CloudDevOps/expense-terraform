module "expense" {
  source = "git::https://github.com/B59-CloudDevOps/expense-terraform.git"
  env    = var.env
}