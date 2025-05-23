resource "aws_s3_bucket" "Dump_Bucket" {
  bucket = var.bucket_name
  # acl    = "private"

}

resource "aws_s3_bucket_object" "Dumpfile" {
    bucket = aws_s3_bucket.Dump_Bucket.bucket
    key    = "global/Dumpster"
    source = "${path.module}/../dump_file.txt"
}