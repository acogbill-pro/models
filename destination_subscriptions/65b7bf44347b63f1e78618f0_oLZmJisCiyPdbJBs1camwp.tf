import {
  to = segment_destination_subscription.id-65b7bf44347b63f1e78618f0_oLZmJisCiyPdbJBs1camwp
  id = "65b7bf44347b63f1e78618f0:oLZmJisCiyPdbJBs1camwp"
}

resource "segment_destination_subscription" "id-65b7bf44347b63f1e78618f0_oLZmJisCiyPdbJBs1camwp" {
  action_id            = "iLgPGgELNm5SgSVaqztJeJ"
  destination_id       = "65b7bf44347b63f1e78618f0"
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