module "vpc" {
  source  = "app.terraform.io/KRITHIVAS-training/vpc/aws"
  version = "2.57.0"
    cidr = "10.1.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  public_subnets  = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]

  enable_ipv6 = true

  enable_nat_gateway = true
  single_nat_gateway = true

  public_subnet_tags = {
    Name = "kris-pub-sub"
  }

  tags = {
    Owner       = "krithivas"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "kris-test"
  }
}