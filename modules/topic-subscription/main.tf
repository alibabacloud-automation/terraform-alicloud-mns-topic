resource "alicloud_mns_topic_subscription" "this_subscription" {
  topic_name            = "${var.topic_name}"
  name                  = "${var.subscription_name}"
  endpoint              = "${var.endpoint}"
  filter_tag            = "${var.filter_tag}"
  notify_strategy       = "${var.notify_strategy}"
  notify_content_format = "${var.notify_content_format}"
}
