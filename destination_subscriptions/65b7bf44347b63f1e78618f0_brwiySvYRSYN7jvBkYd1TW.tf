import {
  to = segment_destination_subscription.id-65b7bf44347b63f1e78618f0_brwiySvYRSYN7jvBkYd1TW
  id = "65b7bf44347b63f1e78618f0:brwiySvYRSYN7jvBkYd1TW"
}

resource "segment_destination_subscription" "id-65b7bf44347b63f1e78618f0_brwiySvYRSYN7jvBkYd1TW" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "65b7bf44347b63f1e78618f0"
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