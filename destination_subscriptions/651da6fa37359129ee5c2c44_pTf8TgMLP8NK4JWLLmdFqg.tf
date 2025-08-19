import {
  to = segment_destination_subscription.id-651da6fa37359129ee5c2c44_pTf8TgMLP8NK4JWLLmdFqg
  id = "651da6fa37359129ee5c2c44:pTf8TgMLP8NK4JWLLmdFqg"
}

resource "segment_destination_subscription" "id-651da6fa37359129ee5c2c44_pTf8TgMLP8NK4JWLLmdFqg" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "651da6fa37359129ee5c2c44"
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