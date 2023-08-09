variable "name" {
    type = string
    description = "bucket name"
}

variable "kms_arn" {
    type = string
    description = "encryption kms arn"
    default = null
}
