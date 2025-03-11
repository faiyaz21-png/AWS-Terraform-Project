# vpc variables 
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}

variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}


variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
}

variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
}

variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
}

variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
}

# Security group variables
variable "ssh_location" {
  default       = "0.0.0.0/0"
  description   = "the ip address that can ssh into the EC2 instances"
  type          = string
}

# RDS variables 
variable "database_snapshot_identifier" {
  default       = "arn:aws:rds:ap-southeast-2:307946668735:snapshot:db1"
  description   = "the database snapshot arn"
  type          = string
}

variable "database_instance_class" {
  default       = "db.t3.micro"
  description   = "the database instance type"
  type          = string
}

variable "database_instance_identifier" {
  default       = "database-1"
  description   = "database instance identifier"
  type          = string
}

variable "multi_az_deployment" {
  default       = false
  description   = "create a standby db instance"
  type          = bool
}

# ALB variables

variable "ssl_certificate_arn" {
  default       = "arn:aws:acm:ap-southeast-2:307946668735:certificate/541686de-b4e7-4113-bb1c-7f83291bc8e6"
  description   = "ssl certificate arn"
  type          = string
}

# SNS variables

# sns topic variables
variable "operator_email" {
default       = "faiyazmiftahul@gmail.com"
description   = "a valid email address"
type          = string
}

# auto scaling group variables
variable "launch_template_name" {
default       = "dev-launch-template"
description   = "name of the launch template"
type          = string
}

variable "ec2_image_id" {
default       = "ami-08a5a143e2c5ee1a8"
description   = "id of the ami"
type          = string
}

variable "ec2_instance_type" {
default       = "t3.micro"
description   = "ec2 instance type"
type          = string
}

variable "ec2_key_pair_name" {
default       = "myec2key"
description   = "name of the ec2 key pair"
type          = string
}

# route 53 variables
variable "domain_name" {
default       = "faiyazx21.com"
description   = "domain name"
type          = string
}

variable "record_name" {
default       = "www"
description   = "sub domain name"
type          = string
}