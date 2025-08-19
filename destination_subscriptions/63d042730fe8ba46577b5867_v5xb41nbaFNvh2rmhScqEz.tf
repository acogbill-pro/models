import {
  to = segment_destination_subscription.id-63d042730fe8ba46577b5867_v5xb41nbaFNvh2rmhScqEz
  id = "63d042730fe8ba46577b5867:v5xb41nbaFNvh2rmhScqEz"
}

resource "segment_destination_subscription" "id-63d042730fe8ba46577b5867_v5xb41nbaFNvh2rmhScqEz" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "63d042730fe8ba46577b5867"
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