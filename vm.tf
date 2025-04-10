data "aws_subnet" "sn-web-A" {
  id = "subnet-06baadc58e5e075a6"
}

resource "aws_instance" "my-ec2" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  key_name      = data.aws_key_pair.A4L.key_name
  network_interface {
    network_interface_id = aws_network_interface.vip.id
    device_index         = 0
  }
}

data "aws_key_pair" "A4L" {
  key_name = "A4L"
}

resource "aws_network_interface" "vip" {
  subnet_id = data.aws_subnet.sn-web-A.id
  security_groups = ["sg-03c7e183ef77a9d03"]
}
