variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
    default = {
      us-east-1 = "ami-007855ac798b5175e" # Amazon ubantu 2 AMI (HVM) - Kernel 5.10, SSD Volume Type
		  us-east-2 = "ami-0568773882d492fc8" # Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type
	  	us-west-1 = "ami-018d291ca9ffc002f" # Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type
		  us-west-2 = "ami-0c2ab3b8efb09f272" # Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type
    }
}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}
variable "private_subnet_cidr" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
variable "private_subnet_name" {}
variable Main_Routing_Table {}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "environment" { default = "dev" }
variable "instance_type" {
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
    }
}

