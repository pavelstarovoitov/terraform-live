provider "aws" {
    region = "us-east-2"
  
}

module "webserver_cluster" {
  source = "/home/starik/EPAM/Terraform/myfolder/chapter3/modules/services/webserver-cluster"
  
  cluster_name      = "webservers-stage"
  db_remote_state_bucket = "terraform-up-and-running-state-pavelstaravoitau1" 
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2

  webserver_bucket_key = "stage/services/webserver-cluster/terraform.tfstate"
}