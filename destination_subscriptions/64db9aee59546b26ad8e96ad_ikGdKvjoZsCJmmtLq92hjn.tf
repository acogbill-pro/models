import {
  to = segment_destination_subscription.id-64db9aee59546b26ad8e96ad_ikGdKvjoZsCJmmtLq92hjn
  id = "64db9aee59546b26ad8e96ad:ikGdKvjoZsCJmmtLq92hjn"
}

resource "segment_destination_subscription" "id-64db9aee59546b26ad8e96ad_ikGdKvjoZsCJmmtLq92hjn" {
  action_id            = "eNkhQGgqJHnQg5vuAHXmQY"
  destination_id       = "64db9aee59546b26ad8e96ad"
  enabled              = true
  model_id             = null
  name                 = "Custom Events"
  reverse_etl_schedule = null
  settings = jsonencode({
    enable_batching = false
    name = {
      "@path" = "$.event"
    }
    named_user_id = {
      "@path" = "$.userId"
    }
    occurred = {
      "@path" = "$.timestamp"
    }
    properties = {
      "@path" = "$.properties"
    }
  })
  trigger = "type = \"track\""
}