resource "google_storage_bucket" "bucket" {
  for_each = toset(var.bucket_name)  
  name          = each.key
  location      = "asia-south1"
  force_destroy = true

  uniform_bucket_level_access = true
}