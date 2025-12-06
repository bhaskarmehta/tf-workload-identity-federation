variable "bucket_conf"{
    type = map(object({
        uniform_bucket_level_access = bool
    }))
}