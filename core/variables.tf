variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
default = "/home/despot/coding/terraform/test_env/insecure-deployer.pub"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "insecure-deployer" 
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default = "eu-central-1"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-central-1 = "ami-ecf9c2f1"
  }
}
