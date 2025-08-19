import {
  to = segment_destination_subscription.id-636d725339be2277b6f48535_5PZgLAH9V4Dwch16j2GfhW
  id = "636d725339be2277b6f48535:5PZgLAH9V4Dwch16j2GfhW"
}

resource "segment_destination_subscription" "id-636d725339be2277b6f48535_5PZgLAH9V4Dwch16j2GfhW" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "636d725339be2277b6f48535"
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