variable "day3_vpc-name" {
}
##########################
variable "day3_vpc_cider" {
}
#############################
/// Public Subnet Variable

variable "pub-zone" {
  type = list(string)
  default = [ "ap-southeast-1a","ap-southeast-1b","ap-southeast-1c", ]
}

variable "pub-cider" {
  type = list(string)
  default = [ "192.168.1.0/24","192.168.2.0/24","192.168.3.0/24", ]
}

variable "pub-sunet-name" {
  type = list(string)
  default = [ "public-subnet-1","public-subnet-2","public-subnet-3", ]
}

#############################
/// private Subnet Variable

variable "prv-zone" {
  type = list(string)
  default = [ "ap-southeast-1a","ap-southeast-1b","ap-southeast-1c", ]
}

variable "prv-cider" {
  type = list(string)
  default = [ "192.168.4.0/24","192.168.5.0/24","192.168.6.0/24", ]
}

variable "prv-sunet-name" {
  type = list(string)
  default = [ "private-subnet-1","private-subnet-2","private-subnet-3", ]
}
