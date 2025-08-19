import {
  to = segment_destination_subscription.id-63bf129626d76f57c4deaa50_emQ3PVF5gi9LLSe7xqtQFV
  id = "63bf129626d76f57c4deaa50:emQ3PVF5gi9LLSe7xqtQFV"
}

resource "segment_destination_subscription" "id-63bf129626d76f57c4deaa50_emQ3PVF5gi9LLSe7xqtQFV" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "63bf129626d76f57c4deaa50"
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