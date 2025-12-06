terraform{
    backend "gcs"{
        bucket = "bhaskar-terraform-state"
        prefix = "tf"
    }
}