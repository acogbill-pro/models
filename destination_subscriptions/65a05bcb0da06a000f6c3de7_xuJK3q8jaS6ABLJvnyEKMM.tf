import {
  to = segment_destination_subscription.id-65a05bcb0da06a000f6c3de7_xuJK3q8jaS6ABLJvnyEKMM
  id = "65a05bcb0da06a000f6c3de7:xuJK3q8jaS6ABLJvnyEKMM"
}

resource "segment_destination_subscription" "id-65a05bcb0da06a000f6c3de7_xuJK3q8jaS6ABLJvnyEKMM" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "65a05bcb0da06a000f6c3de7"
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