resource "aws_instance" "MuddyThunder" {
  ami           = var.muddythunder_ami
  instance_type = var.muddythunder_instance_type
}