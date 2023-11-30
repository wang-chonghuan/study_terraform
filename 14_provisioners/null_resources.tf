resource "null_resource" "setup" {
    provisioner "local-exec" {
        command = <<CMD
        ssh -i nginx_key ec2-user@${aws_instance.nginx.public_ip} -o StrictHostKeyChecki\
        ng=no -o UserKnownHostsFile=/dev/null 'sudo amazon-linux-extras enable nginx1.12; su\
        do yum -y install nginx; sudo chmod 777 /usr/share/nginx/html/index.html; echo \"Hel\
        lo from nginx on AWS\" > /usr/share/nginx/html/index.html; sudo systemctl start ngin\
        x;'
        CMD
    }
}

resource "aws_instance" "nginx_better" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.rules.id]
  key_name = aws_key_pair.keypair.key_name
  user_data = <<EOF
    #!/bin/bash
    set -ex

    yum update -y
    amazon-linux-extras enable nginx1.12
    yum -y install nginx
    chmod 777 /usr/share/nginx/html/index.html
    echo "Hello from nginx on AWS" > /usr/share/nginx/html/index.html
    systemctl start nginx
    
  EOF
}