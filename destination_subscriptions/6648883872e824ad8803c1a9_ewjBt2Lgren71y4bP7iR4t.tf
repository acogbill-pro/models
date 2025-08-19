import {
  to = segment_destination_subscription.id-6648883872e824ad8803c1a9_ewjBt2Lgren71y4bP7iR4t
  id = "6648883872e824ad8803c1a9:ewjBt2Lgren71y4bP7iR4t"
}

resource "segment_destination_subscription" "id-6648883872e824ad8803c1a9_ewjBt2Lgren71y4bP7iR4t" {
  action_id      = "oiFvX4YXwyaPVysi1t7mtz"
  destination_id = "6648883872e824ad8803c1a9"
  enabled        = true
  model_id       = "jVekacFFukWA38jFXYz46F"
  name           = "Product Review with Sentiment (DBT)"
  reverse_etl_schedule = {
    config = jsonencode({
      accountId = "259085"
      jobId     = "710963"
    })
    strategy = "DBT_CLOUD"
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
      "@path" = "$.properties.TIMESTAMP"
    }
    user_id = {
      "@path" = "$.properties.USER_ID"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}