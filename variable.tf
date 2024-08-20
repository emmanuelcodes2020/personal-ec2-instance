variable "region" {
  default = "eu-west-2"
  type = string
  description = "aws region to deploy resources"
}



variable "instance_type" {
  description = "The instance type for the EC2 instance."
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  default = "lamtech"
  description = "The key name for SSH access."
  type        = string
}

variable "subnet_id" {
  default = "subnet-02a9e5d00bbb8cc25"
  description = "The subnet ID to launch the instance in."
  type        = string
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance."
  type        = bool
  default     = true
}


variable "security_group_ids" {
  description = "A list of security group IDs to associate with the instance."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to the instance."
  type        = map(string)
  default     = {}
}

variable "user_data" {
  description = "User data script to configure the instance."
  type        = string
  default     = ""
}

variable "volume_type" {
  description = "The type of volume to use."
  type        = string
  default     = "gp2"
}

variable "volume_size" {
  description = "The size of the root EBS volume."
  type        = number
  default     = 8
}