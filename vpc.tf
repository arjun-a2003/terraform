
#vpc creating
resource "aws_vpc" "thevpcnew" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "thevpcnew"
  }
}

#create subnet

resource "aws_subnet" "subnet_new1" {
  vpc_id            = aws_vpc.thevpcnew.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "subnet_new1"
  }
}

#create internet gateway

resource "aws_internet_gateway" "mygway-2" {
  vpc_id = aws_vpc.thevpcnew.id
  tags = {
    Name = "mygway-2"
  }
}

