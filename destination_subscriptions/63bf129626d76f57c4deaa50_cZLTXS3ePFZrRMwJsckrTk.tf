import {
  to = segment_destination_subscription.id-63bf129626d76f57c4deaa50_cZLTXS3ePFZrRMwJsckrTk
  id = "63bf129626d76f57c4deaa50:cZLTXS3ePFZrRMwJsckrTk"
}

resource "segment_destination_subscription" "id-63bf129626d76f57c4deaa50_cZLTXS3ePFZrRMwJsckrTk" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "63bf129626d76f57c4deaa50"
  enabled              = true
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    anonymous_id = {
      "@path" = "$.anonymousId"
    }
    ip = {
      "@path" = "$.context.ip"
    }
    traits = {
      "@path" = "$.traits"
    }
    user_id = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"identify\""
}