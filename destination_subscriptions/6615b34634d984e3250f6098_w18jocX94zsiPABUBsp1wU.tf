import {
  to = segment_destination_subscription.id-6615b34634d984e3250f6098_w18jocX94zsiPABUBsp1wU
  id = "6615b34634d984e3250f6098:w18jocX94zsiPABUBsp1wU"
}

resource "segment_destination_subscription" "id-6615b34634d984e3250f6098_w18jocX94zsiPABUBsp1wU" {
  action_id            = "ifeXsLqNNjJ5HJdRKSJwea"
  destination_id       = "6615b34634d984e3250f6098"
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