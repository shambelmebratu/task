#the following code create 2 resource(EC2 and RDS database) on AWS 

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-server"
  }
}

resource "aws_db_instance" "myrds" {
    allocated_storage   = 1
   storage_type        = "gp2"
   identifier          = "smrds"
   engine              = "mysql"
   engine_version      = "8.0.27"
   instance_class      = "db.t2.micro"
   username            = "admin"
   password            = "Passw0rd!123"
   publicly_accessible = true
   skip_final_snapshot = true

   tags = {
     Name = "MyRDS"
   }
 }


 #after save the above file run the following commands
 #terraform init
 #terraform validate 
 #terraform plan
 #terraform apply