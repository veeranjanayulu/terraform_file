variable "ami" {
  description = "ami id for instance"
  type        = string
  default     = "ami-0dcab815e6ee910aa"

}
variable "instancetype" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}
variable "key" {
  description = "key pair"
  type        = string
  default     = "react"
}