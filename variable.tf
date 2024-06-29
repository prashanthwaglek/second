variable "myvpcprodcidr" {
  default = "10.0.0.0/16"
}
variable "myvpcsubcidr" {
  default = "10.0.1.0/24"
}
variable "myprodami" {
  default = "ami-04f8d7ed2f1a54b14"
}
variable "myprodinstancetype" {
  default = "t2.micro"
}