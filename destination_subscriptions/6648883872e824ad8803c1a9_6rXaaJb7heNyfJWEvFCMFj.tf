import {
  to = segment_destination_subscription.id-6648883872e824ad8803c1a9_6rXaaJb7heNyfJWEvFCMFj
  id = "6648883872e824ad8803c1a9:6rXaaJb7heNyfJWEvFCMFj"
}

resource "segment_destination_subscription" "id-6648883872e824ad8803c1a9_6rXaaJb7heNyfJWEvFCMFj" {
  action_id      = "oiFvX4YXwyaPVysi1t7mtz"
  destination_id = "6648883872e824ad8803c1a9"
  enabled        = false
  model_id       = "c9D3sZx8Q39njS83wTcrke"
  name           = "Review with Sentiment"
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
    event_name = "Product Review"
    message_id = {
      "@path" = "$.messageId"
    }
    properties = {
      "@path" = "$.properties"
    }
    timestamp = {
      "@path" = "$.receivedAt"
    }
    user_id = {
      "@path" = "$.properties.USER_ID"
    }
  })
  trigger = "event = \"new\""
}