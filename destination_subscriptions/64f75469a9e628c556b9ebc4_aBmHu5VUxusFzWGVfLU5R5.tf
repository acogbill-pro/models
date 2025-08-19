import {
  to = segment_destination_subscription.id-64f75469a9e628c556b9ebc4_aBmHu5VUxusFzWGVfLU5R5
  id = "64f75469a9e628c556b9ebc4:aBmHu5VUxusFzWGVfLU5R5"
}

resource "segment_destination_subscription" "id-64f75469a9e628c556b9ebc4_aBmHu5VUxusFzWGVfLU5R5" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "64f75469a9e628c556b9ebc4"
  enabled              = true
  model_id             = null
  name                 = "Group Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    group_id = {
      "@path" = "$.groupId"
    }
    traits = {
      "@path" = "$.traits"
    }
  })
  trigger = "type = \"group\""
}