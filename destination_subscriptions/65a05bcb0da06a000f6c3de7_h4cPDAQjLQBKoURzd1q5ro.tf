import {
  to = segment_destination_subscription.id-65a05bcb0da06a000f6c3de7_h4cPDAQjLQBKoURzd1q5ro
  id = "65a05bcb0da06a000f6c3de7:h4cPDAQjLQBKoURzd1q5ro"
}

resource "segment_destination_subscription" "id-65a05bcb0da06a000f6c3de7_h4cPDAQjLQBKoURzd1q5ro" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "65a05bcb0da06a000f6c3de7"
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