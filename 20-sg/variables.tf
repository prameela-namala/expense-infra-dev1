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
variable "mysql_sg_tags" {
    default = {

        component = "mysql"
    }
  
}

variable "backend_sg_tags" {
  
   default = {
        component = "backend"
   }
}

variable "frontent_sg-tags" {
  
   default = {
        component = "frontend"
   }
}


variable "bastion_sg-tags" {
  
   default = {
        component = "bastion"
   }
}

variable "ansible_sg_tags" {
  default = {}
}
variable "app_alb_sg_tags" {
  
   default = {
        component = "bastion"
   }
}

variable "vpn_sg_tags" {
  
   default = {
        component = "vpn"
   }
}