#module "compute_list"{
#    source = "./compute_list"
#    instance_name = ["server5","server6"]
#}

#module "compute_map"{
#    source = "./compute_map"
#    map_data = {
#        server1 = {
#            zone = "asia-south1-a"
#            machine_type = "e2-medium"
#        },
#        server2 = {
#            zone = "asia-south1-b"
#            machine_type = "e2-medium"
#        }
#    }
#}

#module "compute_count"{
#    source = "./compute_count"
#    vm_count = 2
#}

#module "storage_bucket_list"{
#    source = "./storage_bucket_list"
#    bucket_name = ["bhaskartestingdoing1", "bhaskartestingdoing2" ]
#}

module "storage_bucket_map"{
    source = "./storage_bucket_map"
    bucket_conf = {
        bhaskartestingdoing1 = {
            uniform_bucket_level_access = false
        }
        bhaskartestingdoing2 = {
            uniform_bucket_level_access = true
        }
    }
}