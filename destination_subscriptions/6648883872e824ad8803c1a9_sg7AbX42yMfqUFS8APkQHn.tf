import {
  to = segment_destination_subscription.id-6648883872e824ad8803c1a9_sg7AbX42yMfqUFS8APkQHn
  id = "6648883872e824ad8803c1a9:sg7AbX42yMfqUFS8APkQHn"
}

resource "segment_destination_subscription" "id-6648883872e824ad8803c1a9_sg7AbX42yMfqUFS8APkQHn" {
  action_id      = "oiFvX4YXwyaPVysi1t7mtz"
  destination_id = "6648883872e824ad8803c1a9"
  enabled        = false
  model_id       = "deS3vWsCVzETV1VFxRiQwm"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    anonymous_id = {
      "@path" = "$.properties.ANONYMOUS_ID"
    }
    consent = {
      "@path" = "$.context.consent"
    }
    enable_batching = false
    event_name = {
      "@path" = "$.properties.EVENT_TEXT"
    }
    message_id = {
      "@path" = "$.messageId"
    }
    properties = {
      "@path" = "$.properties"
    }
    timestamp = {
      "@path" = "$.properties.ORIGINAL_TIMESTAMP"
    }
    user_id = {
      "@path" = "$.properties.USER_ID"
    }
  })
  trigger = "event = \"new\""
}