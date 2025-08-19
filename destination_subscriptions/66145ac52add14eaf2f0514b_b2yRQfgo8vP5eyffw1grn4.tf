import {
  to = segment_destination_subscription.id-66145ac52add14eaf2f0514b_b2yRQfgo8vP5eyffw1grn4
  id = "66145ac52add14eaf2f0514b:b2yRQfgo8vP5eyffw1grn4"
}

resource "segment_destination_subscription" "id-66145ac52add14eaf2f0514b_b2yRQfgo8vP5eyffw1grn4" {
  action_id      = "ujsJxBdpg7XkYwKSKREnQt"
  destination_id = "66145ac52add14eaf2f0514b"
  enabled        = true
  model_id       = "ow5jcJTxYAj51emDj4WCTc"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "Ft8lUj659YWB3HPokZeWVddgqA60X3FL"
    event_name = {
      "@path" = "$.properties.event_name"
    }
    message_id = {
      "@path" = "$.messageId"
    }
    properties = {
      "@path" = "$.properties"
    }
    user_id = {
      "@path" = "$.properties.userid"
    }
  })
  trigger = "event = \"new\""
}