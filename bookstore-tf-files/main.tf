
resource "aws_instance" "Web-server-Bookstore" {
  ami                    = data.aws_ami.linux2.id
  instance_type          = "t2.micro"
  key_name               = var.key-name
  vpc_security_group_ids = [aws_security_group.sec-gr.id]
  tags = {
    Name = "Web Server of Bookstore"
  }
  user_data = base64encode(templatefile("user-data.sh", { TOKEN = var.git-token, USERNAME = var.git-name }))
}



