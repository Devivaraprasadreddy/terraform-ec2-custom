# EC2 Instance
resource "aws_instance" "custom_ec2" {
  ami                    = "ami-08c40ec9ead489470" # Amazon Linux 2 in us-east-1
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.custom_subnet.id
  vpc_security_group_ids = [aws_security_group.custom_sg.id]
  key_name               = aws_key_pair.terraform-ec2_key.key_name

  tags = {
    Name = "custom-ec2"
  }
}
