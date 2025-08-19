import {
  to = segment_destination_subscription.id-64833927b90e5572756fde20_5TnQ8zUanxFEkC8TdvuVnW
  id = "64833927b90e5572756fde20:5TnQ8zUanxFEkC8TdvuVnW"
}

resource "segment_destination_subscription" "id-64833927b90e5572756fde20_5TnQ8zUanxFEkC8TdvuVnW" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "64833927b90e5572756fde20"
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