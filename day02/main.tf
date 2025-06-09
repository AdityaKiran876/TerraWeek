resource "local_file" "file1" {
  content = var.name
  filename = "file1.txt"
}
