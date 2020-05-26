variable "AWS_REGION" {
  default = "eu-west-3"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "./ssh_keys/mykey.pub"
}

variable APP_VERSION {
  default = "0"
}

variable MYAPP_SERVICE_ENABLE {
  default = "0"
}

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "ECS_AMIS" {
  type = map(string)
  default = {
    eu-west-3 = "ami-05d7e0c35c7d138c5"
  }
}

