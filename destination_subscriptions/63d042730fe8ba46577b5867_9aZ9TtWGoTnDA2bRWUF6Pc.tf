import {
  to = segment_destination_subscription.id-63d042730fe8ba46577b5867_9aZ9TtWGoTnDA2bRWUF6Pc
  id = "63d042730fe8ba46577b5867:9aZ9TtWGoTnDA2bRWUF6Pc"
}

resource "segment_destination_subscription" "id-63d042730fe8ba46577b5867_9aZ9TtWGoTnDA2bRWUF6Pc" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "63d042730fe8ba46577b5867"
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