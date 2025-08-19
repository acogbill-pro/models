import {
  to = segment_destination_subscription.id-653155126b4a020d15d6de50_3VHDEKGchoYuHs7rAftw43
  id = "653155126b4a020d15d6de50:3VHDEKGchoYuHs7rAftw43"
}

resource "segment_destination_subscription" "id-653155126b4a020d15d6de50_3VHDEKGchoYuHs7rAftw43" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "653155126b4a020d15d6de50"
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