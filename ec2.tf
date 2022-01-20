provider "aws" {
        region="us-east-1"
}

resource "aws_instance" "My-ec2" {
        instance_type="$lookup{var.instance_type,var.env_name)}"
        ami="$lookup{var.ec2_ami,var.env_name)}"
        tags ={
                Name="${var.env_name == "windows" ? 1: 0 }
        }
}
 

