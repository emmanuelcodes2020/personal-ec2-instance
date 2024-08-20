locals {

  name = "GlobalFrontier-Test"
}


module "cma_ec2_instance" {
  source = "git::git@github.com:emmanuelcodes2020/personal-ec2-module.git"
  
  ami = "ami-0c0493bbac867d427"
  name = local.name
  instance_type = "t3.medium"
  key_name = "londonserver"
  subnet_id = "subnet-02a9e5d00bbb8cc25"
  associate_public_ip_address = var.associate_public_ip_address

}