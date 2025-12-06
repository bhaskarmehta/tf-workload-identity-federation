#output "bucket_name"{
#    value = google_storage_bucket.bucket.name
#}


output "bucket_names" {
  value = { for k, b in google_storage_bucket.bucket : k => b.name }
}