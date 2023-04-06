
data "aws_security_group" "all" {
  vpc_id = "vpc-0c1347f7775b2df84"

  filter {                   
		name = "description"
		values = ["*ALL*"]    

	}
	

}

data "aws_iam_instance_profile" "iamprof" {
  name = "Terraform-Server"
}