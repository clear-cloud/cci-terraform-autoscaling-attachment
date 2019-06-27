variable "target_group_arn" {}
variable "asg_id" {}
variable "elb_id" {}

variable "asg_tg_attachment_required" {
  description = "enables / disables ASG target group attachment"
  default     = ""
}

variable "asg_elb_attachment_required" {
  description = "enables / disables ASG ELB attachment"
  default     = ""
}
