
variable "kms_key_arn" {
  type        = string
  description = "KMS key arn to use for encrypting volume"
}

variable "device_name" {
  type        = string
  description = "EBS volume device name to mount the volume"
}

variable "instance_id" {
  type        = string
  description = "EC2 instance id to attach EBS volume to"
}

variable "mission" {
  type        = string
  description = "Value for Mission tag (i.e. rma, fsa, nrcs)"
}

variable "purpose" {
  type        = string
  description = "Value for the Purpose tag"
}

variable "function" {
  type        = string
  description = "Value for the Function tag"
}

variable "software" {
  type        = string
  description = "Value for Software tag"
}

variable "application" {
  type        = string
  description = "Value for Application tag"
}

variable "environment" {
  type        = string
  description = "Value for Environment tag (i.e. dev, test, prod)"
}

variable "tier" {
  type        = string
  description = "Value for Tier tag (i.e. appserver, db)"
}

variable "tags" {
  description = "A mapping of additional tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "ebs_volume_name" {
  description = "Name(s) of the ebs volume"
  type        = string
  default     = ""
}

variable "availability_zone" {
  type        = string
  description = "AZ to start the instance(s) in"
}

variable "ebs_volume_type" {
  type        = string
  description = "Type of volumes. Valid values include standard, gp2, io1, sc1, st1, etc."
  default     = "gp3"
}

variable "ebs_volume_size" {
  type        = string
  description = "EBS volume size in Gibytes (GiB)"
}

variable "throughput" {
  type        = string
  description = "The throughput that the volume supports, in MiB/s"
  default     = null
}

variable "iops" {
  type        = string
  description = "The amount of IOPS to provision for the disk"
  default     = null
}

variable "encrypted" {
  type        = bool
  description = "Whether to encrypt EBS volume or not, by default true"
  default     = true
  validation {
    condition     = var.encrypted
    error_message = "Encryption may not be disabled, default should be true"
  }
}
