resource "google_storage_bucket" "bucket" {  
  for_each = var.bucket_conf  
  name          = each.key
  location      = "asia-south1"
  force_destroy = true

  uniform_bucket_level_access = each.value.uniform_bucket_level_access
}