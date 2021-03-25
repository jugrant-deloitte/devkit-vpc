// Declare Preconfigured AWS Account SSH Private Key Name
// https://docs.aws.amazon.com/ground-station/latest/ug/create-ec2-ssh-key-pair.html
variable "aws_ssh_key" {default = "irps"}


// COPY & PASTE full id-rsa string.
// For example cat ~/.ssh/id_rsa.pub or your key of choice
// This needs to match the private key in the "aws_ssh_key" above
variable "ssh_public_key" {
  type = string
  default = ""
}

// Set RH CoreOS AMI ID
variable "rhcos_ami" {default = "ami-01a270ef11422770a"}


variable "aws_region" { default = "us-gov-west-1" }

// ideally, we pass these in as command line vars so not to confuse people.
variable "aws_access_key" { default = "xxx"}
variable "aws_secret_key" { default = "xxxx" }

// VPC & Domain Naming
// These are going to be private to your cloud.  if you haven't created one, use the following guide: https://www.justinleegrant.com/2021/01/26/creating-rhcos-ami.html
variable "vpc_id" { default = "vpc-0ba8d704b135e7554" }

// The actual name you want ot call the cluster - for example "abcd" would become "abcd.deloittefed.com"
variable "cluster_name" { default = "clustername" }
variable "cluster_domain" { default = "deloittefed.com" }

// Instance Config
variable "bastion_ami" {default = "ami-047e289548e4a9d70"}

// still not 100% if these are correct
variable "vpc_public_subnet_cidrs" { default = ["10.188.8.0/26","10.188.8.64/26","10.188.8.128/26"] }
variable "vpc_private_subnet_cidrs" { default = ["172.15.0.0/26","172.15.0.64/26","172.15.0.128/26"] }
variable "private_vpc_cidr_blocks" { default = "172.15.0.0/24" }
variable "public_vpc_cidr_blocks" { default = "10.0.0.0/8" }
