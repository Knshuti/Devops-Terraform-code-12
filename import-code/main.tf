
resource "aws_instance" "web" {
  ami                                  = "ami-0a699202e5027c10d"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "windows-key"
  monitoring                           = false
  security_groups                      = []
  subnet_id                            = "subnet-0dfc1d16d9cecf1d7"
  tags = {
    Name = "created by terraform"
  }
  
}
