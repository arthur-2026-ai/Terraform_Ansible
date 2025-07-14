variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

variable "aws_region" {
    description = "AWS region"
    type = string
    default = "us-east-1"
}

variable "ssh_public_key_path" {
  description = "path to SSH public key"
  type = string
  default = "~/.ssh/node_key.pub"
}

variable "private_key_path" {
    description = "path to private key SSH"
    type = string
    default = "~/.ssh/node-key"

}