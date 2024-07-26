provider "aws" {


  region = "us-east-1"



}



variable "create_vpc" {

  type = bool

}





resource "aws_vpc" "dep1" {



    count = var.create_vpc ? 1:0



    cidr_block = "192.168.0.0/16"

    tags = {

      "Name" = "VPC1"

      

    }

  

}



resource "aws_vpc" "dep2" {



    count = var.create_vpc ? 0:1



    cidr_block = "192.168.1.0/24"

    tags = {

      "Name" = "VPC2"

      

    }

  

}


