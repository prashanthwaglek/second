provider "aws" {
  region = "ap-south-1"
  profile = "root"
}
#vpc
resource "aws_vpc" "myvpcprod" {
  cidr_block = var.myvpcprodcidr
}

#subnet creation
resource "aws_subnet" "mysubnetprod" {
  cidr_block = var.myvpcsubcidr
  vpc_id = aws_vpc.myvpcprod.id
  depends_on = [ aws_vpc.myvpcprod ]
}

#VM creation
resource "aws_instance" "myprodvm" {
  ami = var.myprodami
  instance_type = var.myprodinstancetype
  depends_on = [ aws_subnet.mysubnetprod ]
}