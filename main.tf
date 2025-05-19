resource "local_file" "CreateFile" {
  filename = "example.txt"
content  = data.IP_Information.Dell_Worker_IP.filename
  
}

data "IP_Information" "Dell_Worker_IP" {
filename = "worker_ip.txt"
}