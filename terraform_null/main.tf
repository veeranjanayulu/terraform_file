provider "aws" {
  region = "ca-central-1"
}

# Null Resource Example
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'vinayaka chavithi subhakankshalu'"
    
    
  }
  provisioner "local-exec"{
    command = "echo 'hi this is hemanth kumar chintada'"
    }

  # Use triggers to force recreation on variable change
 triggers = {
  run_count = "${timestamp()}"
}

}
