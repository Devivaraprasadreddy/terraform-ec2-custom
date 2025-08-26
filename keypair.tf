# Generate a new key pair locally
resource "tls_private_key" "custom_tls_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Upload public key to AWS
resource "aws_key_pair" "terraform-ec2_key" {
  key_name   = "custom-key"
  public_key = tls_private_key.custom_tls_key.public_key_openssh
}

# Save private key locally (so you can SSH)
resource "local_file" "private_key_pem" {
  filename = "${path.module}/terraform-ec2-key.pem"
  content  = tls_private_key.custom_tls_key.private_key_pem
  file_permission = "0400"
}
