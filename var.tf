variable "instance_type" {
}
variable "ec2_ami" {
  type=map
	default={
		Linux="linux.tfvars"
		Windows="windows.tfvars"
	}
}
variable "env_name"{
}


