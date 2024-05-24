variable "instance_ami" {
  description = "AMI ID for the EC2 instance."
  type = string
  # Provision [Amazon Linux 2]
  default = "ami-0c55b159cbfafe1f0"
}