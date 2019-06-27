# --------------------------------
# Optional ELB attachment
# --------------------------------
resource "aws_autoscaling_attachment" "asg_attachment_elb" {
  count                  = "${var.asg_elb_attachment_required ? 1 : 0}"
  autoscaling_group_name = "${var.asg_id}"
  elb                    = "${var.elb_id}"
}

# --------------------------------
# Optional Target Group attachment
# --------------------------------
resource "aws_autoscaling_attachment" "asg_attachment_tg" {
  count                  = "${var.asg_tg_attachment_required ? 1 : 0}"
  autoscaling_group_name = "${var.asg_id}"
  alb_target_group_arn   = "${var.target_group_arn}"
}
