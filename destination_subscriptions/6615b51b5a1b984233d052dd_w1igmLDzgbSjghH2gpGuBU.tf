import {
  to = segment_destination_subscription.id-6615b51b5a1b984233d052dd_w1igmLDzgbSjghH2gpGuBU
  id = "6615b51b5a1b984233d052dd:w1igmLDzgbSjghH2gpGuBU"
}

resource "segment_destination_subscription" "id-6615b51b5a1b984233d052dd_w1igmLDzgbSjghH2gpGuBU" {
  action_id            = "ifeXsLqNNjJ5HJdRKSJwea"
  destination_id       = "6615b51b5a1b984233d052dd"
  enabled              = true
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    dataFields = {
      "@path" = "$.traits"
    }
    email = {
      "@path" = "$.traits.email"
    }
    mergeNestedObjects = false
    phoneNumber = {
      "@path" = "$.traits.phone"
    }
    userId = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"identify\""
}