variable "instance_count" {
  description = "Number of application instances"
  type        = number
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the application instances"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}
