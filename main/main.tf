module "core"{
  source = "../core"
}
module "user1" {
  source = "../agent"
  vpc_id = "${module.core.vpc_id}"
  cidr_block="10.0.1.0/24"
}
module "user2" {
  source = "../agent"
  vpc_id = "${module.core.vpc_id}"
  cidr_block="10.0.2.0/24"
}
