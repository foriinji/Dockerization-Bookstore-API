output "web-server-bookstore-adress" {
  value = "http://${aws_instance.Web-server-Bookstore.public_ip}"
}