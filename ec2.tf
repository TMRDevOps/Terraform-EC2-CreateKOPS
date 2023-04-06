resource "aws_instance" "app" {
	
	ami = var.ubuntu

	instance_type = "t2.micro"
	vpc_security_group_ids = [ data.aws_security_group.all.id ]
    key_name = var.sshkey
	
	user_data = file("${path.module}/startup.sh")   //call out script file saved in the same folder
	iam_instance_profile = data.aws_iam_instance_profile.iamprof.role_name
	
	tags = {
	Name = "K8Kops"
    }
}

output "public_ip" {
	value = aws_instance.app.*.public_ip
  
}

output "id" {
	value = aws_instance.app.*.id
  
}

/*
resource "aws_ec2_instance_state" "state" {
	instance_id = aws_instance.app.id
    state = "stopped"   
}
*/
