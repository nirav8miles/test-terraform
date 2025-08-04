
resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb1"
  username             = "foo"
  password             = trim(file("./rds_pass.txt")) # or use a sensitive var
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
