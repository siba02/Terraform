provider "aws" {
  region     = "ap-south-1"
  profile = "Sibu02"
}

resource "aws_instance" "Demo" {
  ami           = "ami-0e3addcf2a4624dfb"
  instance_type = "t3.micro"
  key_name = "test"

   subnet_id              = "subnet-0f293e5bc184e7692"
   vpc_security_group_ids = ["sg-0678c60b34ac72be4"]
   associate_public_ip_address = true
  tags = {
    Name = "Demo"
  }


}
