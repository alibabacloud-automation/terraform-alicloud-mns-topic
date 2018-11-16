# alicloud_mns_topic_subscription

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name          |  the name of subscription.   |   string  |    no   |    yes       |
|topic_name          |  the name of topic.   |   string  |    no   |    yes       |
|endpoint          |  Describe the terminal address of the message received in this subscription.   |   string  |    no   |    yes       |
|notify_strategy          |  The NotifyStrategy attribute of Subscription.   |   string  |    "BACKOFF_RETRY"  |    no       |
|notify_content_format    |  The NotifyContentFormat attribute of Subscription.   |   string  |   "XML"  |    no       |
|filter_tag               |  Describe the terminal address of the message received in this subscription.   |   string  |    ""   |    no       |
 
 

## Outputs

| Name | Description |
|------|-------------|
| this_subcription_name    |     the name of subscription        |