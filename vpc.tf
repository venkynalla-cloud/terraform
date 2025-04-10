/*# Create a VPC
resource "aws_vpc" "vpc_name" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "custom-vpc"
  }
}*/

/*data "aws_vpc" "custom_vpc" {
  id = "vpc-02779504dc5ebb975"
}*/
