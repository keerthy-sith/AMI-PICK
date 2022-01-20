provider "aws" {
        region="us-east-1"
}

resource "aws_instance" "My-ec2" {
        instance_type="${var.instance_type == "linux.tfvars" ? 1: 0 }
        ami="${var.ec2_ami == "linux.tfvars" ? 1: 0 }
        tags ={
                Name="${var.env_name == "linux.tfvars" ? 1: 0 }
        }
}
 

