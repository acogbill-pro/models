import {
  to = segment_destination_subscription.id-6615c463b51c954992253a50_6BB5HAqqXEFhekqrk7ahtx
  id = "6615c463b51c954992253a50:6BB5HAqqXEFhekqrk7ahtx"
}

resource "segment_destination_subscription" "id-6615c463b51c954992253a50_6BB5HAqqXEFhekqrk7ahtx" {
  action_id      = "3MrS3Se3PAaxL4wpQN93gA"
  destination_id = "6615c463b51c954992253a50"
  enabled        = true
  model_id       = "h1cFeEczqL7ymQs5QprhbQ"
  name           = "Custom Event"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    createdAt = {
      "@path" = "$.receivedAt"
    }
    email = {
      "@path" = "$.properties.email"
    }
    eventName = {
      "@path" = "$.properties.event_name"
    }
    userId = {
      "@path" = "$.properties.userid"
    }
  })
  trigger = "event = \"new\""
}