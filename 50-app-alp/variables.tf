variable "project_name" {

    default = "expense"
  
}

variable "environment" {

    default = "dev"
  
}

variable "common_tags" {
  
  default = {

    project = "expense"
    environment = "dev"
    terraform = true
  }


}
variable "zone_name" {
  default = "prameela.online"
}
variable "app_alb_tags" {
  default = {
    component = "app_alb"
  }
}