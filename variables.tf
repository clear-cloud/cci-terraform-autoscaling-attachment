variable "target_group_arn" {
  default = ""
}

variable "asg_id" {
  default = ""
}

variable "elb_id" {
  default = ""
}

variable "asg_tg_attachment_required" {
  description = "enables / disables ASG target group attachment"
  default     = ""
}

variable "asg_elb_attachment_required" {
  description = "enables / disables ASG ELB attachment"
  default     = ""
}
