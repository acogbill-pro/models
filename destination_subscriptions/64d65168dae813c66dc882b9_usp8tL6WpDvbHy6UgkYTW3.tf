import {
  to = segment_destination_subscription.id-64d65168dae813c66dc882b9_usp8tL6WpDvbHy6UgkYTW3
  id = "64d65168dae813c66dc882b9:usp8tL6WpDvbHy6UgkYTW3"
}

resource "segment_destination_subscription" "id-64d65168dae813c66dc882b9_usp8tL6WpDvbHy6UgkYTW3" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "64d65168dae813c66dc882b9"
  enabled        = true
  model_id       = "a5zu4vDwJL7GsnBFKf1qzy"
  name           = "Send Identify"
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
    message_id = {
      "@path" = "$.messageId"
    }
    traits = {
      Email = {
        "@path" = "$.properties.EMAIL"
      }
      "Has DWH Email" = {
        "@path" = "$.properties.DWH_VALIDATED"
      }
    }
    user_id = {
      "@path" = "$.properties.ID"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}