module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "VPC-ECS"
  cidr = "10.0.0.0/16" #10.0.1.1 até 10.0.255.255

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
 

}