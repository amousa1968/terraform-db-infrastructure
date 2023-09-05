##################
# AWS POSTGRESQL #
##################
variable "aws_pg_db_name" {
  type        = string
  default = "admindb"
}

variable "aws_pg_allocated_storage" {
  type        = number
  default = 20
}

variable "aws_pg_engine" {
    type = string
    default = "postgres"
}

variable "aws_pg_engine_version" {
    type = string
    default = "14.4"
}

variable "aws_pg_instance_class" {
    type = string
    default = "db.t3.micro"
}

variable "aws_pg_username"{
    type = string
    default = "demouser"
}

variable "aws_pg_password" {
  type = string
  default= "Democloud123"
}

variable "aws_postgres_port" {
  type = string
  default= "5432"
}

variable "aws_pg_parameter_group_name" {
  type = string
  default = "postgres-logical-decoding-new"
}

variable "aws_pg_parameter_group_family" {
  type = string
  default = "postgres14"
}

variable "aws_pg_parameter_settings_name" {
  type = string
  default = "rds.logical_replication"
}

variable "aws_pg_parameter_settings_value" {
  type = string
  default = "1"
}

variable "aws_pg_parameter_settings_apply_method" {
  type = string
  default = "pending-reboot"
}