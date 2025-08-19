import {
  to = segment_destination_subscription.id-636d725339be2277b6f48535_sFDQ1MSSoJE5DmEMBUZoNp
  id = "636d725339be2277b6f48535:sFDQ1MSSoJE5DmEMBUZoNp"
}

resource "segment_destination_subscription" "id-636d725339be2277b6f48535_sFDQ1MSSoJE5DmEMBUZoNp" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "636d725339be2277b6f48535"
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