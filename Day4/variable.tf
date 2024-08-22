variable "day4-vpc" {
  type = object({
    Name = string
    cidr = string
  })
  default = {
    Name = "Day4-VPC"
    cidr = "192.168.0.0/16"
  }
}

/// Subnet Variables
variable "public_subnet" {
  type = map(object({
    cidr              = string
    availability_zone = string
    Name              = string
  }))
  default = {
    "public_subnet_1" = {
      cidr              = "192.168.0.0/24"
      availability_zone = "ap-southeast-1a"
      Name              = "Public_Subnet_1"
    }
    "public_subnet_2" = {
      cidr              = "192.168.1.0/24"
      availability_zone = "ap-southeast-1b"
      Name              = "Public_Subnet_2"
    }
    "public_subnet_3" = {
      cidr              = "192.168.2.0/24"
      availability_zone = "ap-southeast-1c"
      Name              = "Public_Subnet_2"
    }
  }
}

locals {
  makisam_vpc_name = aws_vpc.day4-vpc.tags.Name
}
