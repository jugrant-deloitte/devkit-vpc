// General Defaults
variable "default_tags" { default = {} }
variable "aws_azs" { default = ["a", "b", "c"] }

// Instance Config
variable "bastion_type" {default = "m5.xlarge"}
variable "registry_type" {default = "m5.xlarge"}
variable "bastion_disk" {default = "100"}
variable "registry_volume" {default = "120"}
variable "public_subnet_id" { default = "" }
variable "master_sg_ids" {default = "" }

