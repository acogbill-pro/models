import {
  to = segment_destination_subscription.id-64f75469a9e628c556b9ebc4_q2s7E3cgwGhyznm1j3QSC8
  id = "64f75469a9e628c556b9ebc4:q2s7E3cgwGhyznm1j3QSC8"
}

resource "segment_destination_subscription" "id-64f75469a9e628c556b9ebc4_q2s7E3cgwGhyznm1j3QSC8" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "64f75469a9e628c556b9ebc4"
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