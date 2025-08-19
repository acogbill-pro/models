import {
  to = segment_destination_subscription.id-651da6fa37359129ee5c2c44_3gmGEjtTz4d75zf2P5EGSG
  id = "651da6fa37359129ee5c2c44:3gmGEjtTz4d75zf2P5EGSG"
}

resource "segment_destination_subscription" "id-651da6fa37359129ee5c2c44_3gmGEjtTz4d75zf2P5EGSG" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "651da6fa37359129ee5c2c44"
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