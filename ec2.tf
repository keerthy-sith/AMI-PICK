provider "aws" {
        region="us-east-1"
}

resource "aws_instance" "My-ec2" {
        instance_type=var.instance_type
        ami="${var.ec2_ami == "windows" ? 1: 0 }
        tags ={
                Name=var.env_name
        }
}
 

