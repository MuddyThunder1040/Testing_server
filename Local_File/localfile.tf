data "local_file" "Src_file" {
  filename = "Sample.txt"
}

resource "local_file" "Call_of_Duty" {
  filename = var.filename
  content  = data.local_file.Src_file.content
}