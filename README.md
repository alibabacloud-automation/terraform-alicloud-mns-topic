Alicloud MNS Queue Terraform Module   
terraform-alicloud-mns-topic
---

This Terraform module will create a topic and a subcription.

These types of resources are supported:

* [Alicloud_mns_topic](https://www.terraform.io/docs/providers/alicloud/r/mns_topic.html)
* [Alicloud_mns_topic_subscription](https://www.terraform.io/docs/providers/alicloud/r/mns_topic_subscription.html)

----------------------

Usage
-----
You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf
    
```hcl
module "mns-topic" {
  source = "terraform-alicloud-modules/mns-topic/alicloud"

  #variables for  topic
  topic_name                        = "tf-example-mnstopic"
  maximum_message_size              =65536
  logging_enabled                   =true

  #variables for  subscription
  subscription_name                 ="tf-example-mnstopic-subscription"
  endpoint                          ="http://localhost:7001/notifyback.htm"
  filter_tag                        ="Test"
  notify_strategy                   ="BACKOFF_RETRY"
  notify_content_format             ="XML" 
}
```

2. Setting `access_key` and `secret_key` values through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|topic_name               | The name of topic.    |  string     |     ""      | yes |  
|maximum_message_size          | This indicates the maximum length, in bytes, of any message body sent to the topic.   |   int  |    65536  |    no     |
|loggin_enabled          |  is log enabled   |   bool  |    false   |    no       |
|subscription_name               | The name of queue.    |  string     |     ""      | yes | 
|endpoint          |  Describe the terminal address of the message received in this subscription.   |   string  |    no   |    yes       |
|notify_strategy          |  The NotifyStrategy attribute of Subscription.   |   string  |    "BACKOFF_RETRY"  |    no       |
|notify_content_format    |  The NotifyContentFormat attribute of Subscription.   |   string  |   "XML"  |    no       |
|filter_tag               |  Describe the terminal address of the message received in this subscription.   |   string  |    ""   |    no       |

## Outputs

| Name | Description |
|------|-------------|
| this_topic_name     |        the name of topic created     |
| this_subscription_name     |        the name of subscription created     |

Authors
---------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
