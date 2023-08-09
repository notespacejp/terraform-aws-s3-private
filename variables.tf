variable "name" {
    type = string
    description = "bucket name"
}

variable "prefix" {
    type = string
    description = "bucket prefix"
    default = null
}

variable "kms_arn" {
    type = string
    description = "encryption kms arn"
    default = null
}
