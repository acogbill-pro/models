import {
  to = segment_destination_subscription.id-64833927b90e5572756fde20_rRjpx96HsL7ge7CdMTiAsH
  id = "64833927b90e5572756fde20:rRjpx96HsL7ge7CdMTiAsH"
}

resource "segment_destination_subscription" "id-64833927b90e5572756fde20_rRjpx96HsL7ge7CdMTiAsH" {
  action_id            = "drUNmF6UifiVmB9NStLWS1"
  destination_id       = "64833927b90e5572756fde20"
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