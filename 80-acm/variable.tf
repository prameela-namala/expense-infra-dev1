
variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
        Environment = "dev"
    }
}


variable "zone_name" {
    default = "prameela.online"
}

variable "zone_id" {
    default = "Z01521229F4LC5G7LZHG"
}
