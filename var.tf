variable "instance_type" {
	type=map
	default={
		Linux="linux.tfvars"
		Windows="windows.tfvars"
	}
}
variable "ec2_ami" {
  type=map
	default={
		Linux="linux.tfvars"
		Windows="windows.tfvars"
	}
}
variable "env_name"{
	type=map
	default={
		Linux="linux.tfvars"
		Windows="windows.tfvars"
	}
}



