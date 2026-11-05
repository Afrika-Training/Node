# Teste do baseline IaC do Veracode Connect: problemas novos introduzidos neste PR.
resource "aws_s3_bucket" "novo_publico" {
  bucket = "connect-baseline-teste-publico"
  acl    = "public-read"
}

resource "aws_security_group" "novo_aberto" {
  name = "novo-aberto"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
