variable "map_data"{
    type = map(object({
        zone = string
        machine_type = string
    }))
}