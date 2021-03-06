/*------------------------------------------------------------------------------
Variable definitions here
------------------------------------------------------------------------------*/
#  skip_credentials_validation = true
#  skip_region_validation = true
#  skip_requesting_account_id = true
#  skip_get_ec2_platforms = true

variable "region" {
  description = "The AWS region"
  default     = "us-east-1"
}

#ami="ami-6871a115"          # RHEL 7.5 RHEL-7.5_HVM_GA-20180322-x86_64-1-Hourly2-GP2
#ami="ami-08a7d2bfef687328f" # RHEL 7.6 RHEL-7.6_HVM-20190618-x86_64-0-Hourly2-GP2
#ami="ami-029c0fbe456d58bd1" # RHEL 7.7 RHEL-7.7_HVM-20190923-x86_64-0-Hourly2-GP2
#ami="ami-08e923f2f38197e46" # RHEL 7.8 RHEL-7.8_HVM_GA-20200225-x86_64-1-Hourly2-GP2
#ami="ami-005b7876121b7244d" # RHEL 7.9 RHEL-7.9_HVM_GA-20200917-x86_64-0-Hourly2-GP2
#ami="ami-00e87074e52e6c9f9" # CentOS 7.9 - CentOS 7.9.2009 x86_64 - https://wiki.centos.org/Cloud/AWS
#ami="ami-06cf02a98a61f9f5e" # CentOS 7.8 - CentOS 7.8.2003 x86_64 - https://wiki.centos.org/Cloud/AWS

variable "ami" {
  description = "The AMIs to use"
  default     = "ami-005b7876121b7244d"
}


# Default Free Tier
variable "instance_type" {
  description = "Instance Spec"
  default     = "t2.micro"
}

variable "hostname" {
  description = "The instance hostname"
  default     = "DeveloperDesktop"
}

variable "ami_default_user" {
  description = "Default AMI login"
  default     = "ec2-user"
}

# Update to match your key name and path
variable "key_name" {
  description = "SSH key"
  default     = "CraigPomaUMUC"
}

variable "private_key_path" {
  description = "Private Key Path for Connection"
  default     = "./private/CraigPomaUMUC.pem"
}

# Update to match your subnet
variable "subnet_id" {
  description = "Subnet for Instance"
  default     = "subnet-a053e9c7"
}

# Update to match your Security Group IDs
variable "vpc_security_group_ids" {
  description = "Security Groups for Instance"
  default     = ["sg-b0a628fd", "sg-00978e100f38abc81"]
}

# Update to match your private IP desired or comment out to make dynamic
variable "private_ip_address" {
  description = "Private IP Address. Also Dynamic"
  default     = "172.31.1.193"
}

# Update to make your TAG relevant to you as the Author/POC
variable "poc" {
  description = "Point of Contact"
  default     = "Craig Poma"
}

variable "aws_iam_instance_profile_name" {
  description = "Role Name"
  default     = "S3_USER"
}

variable "aws_iam_instance_profile_role_arn" {
  description = "Profile Role ARN"
  default     = "arn:aws:iam::763972210240:role/S3_USER"
}

variable "aws_iam_instance_profile_arn" {
  description = "Profile ARN"
  default     = "arn:aws:iam::763972210240:instance-profile/S3_USER"
}

# Used by auto-shutdown script
variable "clap_on" {
  description = "Clapper ON Parameters - ON weekdays 7am"
  default     = "0 7 * * 1-5 *"
}

variable "clap_off" {
  description = "Clapper OFF Parameters - OFF weekdays 10pm"
  default     = "0 22 * * 1-5 *"
}

variable "default_user_name" {
  description = "Default Desktop Username"
  default     = "developer"
}

variable "default_user_password" {
  description = "Default Desktop Password"
  default     = "P@ssword1234"
}

variable "chef_workstation_rpm_name" {
  description = "Chef Workstation RPM Name"
#  default     = "chef-workstation-0.18.3-1.el7.x86_64.rpm"
  default     = "chef-workstation-21.1.233-1.el7.x86_64.rpm"
}

variable "chef_workstation_rpm_url" {
  description = "Chef Workstation RPM URL"
#  default     = "https://packages.chef.io/files/stable/chef-workstation/0.18.3/el/7/chef-workstation-0.18.3-1.el7.x86_64.rpm"
  default     = "https://packages.chef.io/files/stable/chef-workstation/21.1.233/el/7/chef-workstation-21.1.233-1.el7.x86_64.rpm"
}


##################################################
# THINGS TO PASS IN ON COMMAND LINE
# terraform apply -var "secret_key=YOUR_KEY_VALUE" -var "access_key=YOUR_KEY_VALUE"
##################################################
variable "access_key" {
  description = "The AWS access key"
  default     = "YOUR_KEY_HERE"
}

variable "secret_key" {
  description = "The AWS secret key"
  default     = "YOUR_KEY_HERE"
}

