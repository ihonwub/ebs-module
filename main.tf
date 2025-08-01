
locals {
  default_tags = {
    Name        = var.ebs_volume_name
    mission     = var.mission
    software    = var.software
    application = var.application
    environment = var.environment
    tier        = var.tier
    purpose     = var.purpose
    function    = var.function
  }
}

resource "aws_ebs_volume" "this" {
  availability_zone = var.availability_zone
  type              = var.ebs_volume_type
  size              = var.ebs_volume_size
  iops              = var.iops
  throughput        = var.throughput
  encrypted         = var.encrypted
  kms_key_id        = var.kms_key_arn
  tags              = merge(local.default_tags, var.tags)

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_volume_attachment" "ebs_attachment" {
  device_name = var.device_name
  volume_id   = aws_ebs_volume.this.id
  instance_id = var.instance_id
}
