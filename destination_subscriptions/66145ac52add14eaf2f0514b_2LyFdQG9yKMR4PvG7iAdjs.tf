import {
  to = segment_destination_subscription.id-66145ac52add14eaf2f0514b_2LyFdQG9yKMR4PvG7iAdjs
  id = "66145ac52add14eaf2f0514b:2LyFdQG9yKMR4PvG7iAdjs"
}

resource "segment_destination_subscription" "id-66145ac52add14eaf2f0514b_2LyFdQG9yKMR4PvG7iAdjs" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "66145ac52add14eaf2f0514b"
  enabled        = true
  model_id       = "cuizsVWzAtV2fDc8MUKZBx"
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
      "@path" = "$.properties"
    }
    user_id = {
      "@path" = "$.properties.userid"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}