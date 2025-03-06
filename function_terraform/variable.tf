variable "ami_map" {
  description = "AMI IDs per region"
  default = {
    "ca-central-1" = "ami-05073582a4b03d785"
    "us-west-2" = "ami-0d682f26195e9ec0f"
  }
}

variable "instance_types" {
  description = "Instance types for different environments"
  default = "t2.medium"
    
  
}  

variable "region" {
  description = "AWS region to deploy resources"
  default     = "ca-central-1"
}
