resource "aws_key_pair" "ssh_keypair" {
  key_name   = "${var.key}"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDp4nesEwCekEpOnhtMy8nXPiwsUdkrMqJ+0RRhKn3T+vGmX4E70KUGj8mL8CV5Lmq9DrY8a/tGSpaIVwT6Ux/EJFXdQDtnDdk4d5nQrnegEMzxl83jlxdUP8nj3A3DMdK0Hp5aQw5sB7gLJQArFt+LiuOifHoLg+gp90ebmThRXmlNFnsedliB2P8JWSTZ11mwXyZtKSSQh6L7PTz5PnVXGha0A+v2mV4Ql7nGy4r7FzyCMxwwnaeXM9PdfDMRCqkTY4RmQ6IniSb0CwIqnw0zNjSLUppR5fnMGNXWL6Lcbp/8r8tjlr+cH5So/+YLvxGOb90A3Kh//dVk9dhcdXxB"
}
