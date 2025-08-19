import {
  to = segment_destination_subscription.id-653155126b4a020d15d6de50_dndWYQnzJwzkNo5JUt6Acx
  id = "653155126b4a020d15d6de50:dndWYQnzJwzkNo5JUt6Acx"
}

resource "segment_destination_subscription" "id-653155126b4a020d15d6de50_dndWYQnzJwzkNo5JUt6Acx" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "653155126b4a020d15d6de50"
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