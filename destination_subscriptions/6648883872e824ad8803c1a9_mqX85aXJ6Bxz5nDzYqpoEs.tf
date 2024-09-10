import {
  to = segment_destination_subscription.id-6648883872e824ad8803c1a9_mqX85aXJ6Bxz5nDzYqpoEs
  id = "6648883872e824ad8803c1a9:mqX85aXJ6Bxz5nDzYqpoEs"
}

resource "segment_destination_subscription" "id-6648883872e824ad8803c1a9_mqX85aXJ6Bxz5nDzYqpoEs" {
  action_id      = "oiFvX4YXwyaPVysi1t7mtz"
  destination_id = "6648883872e824ad8803c1a9"
  enabled        = false
  model_id       = "jVekacFFukWA38jFXYz46F"
  name           = "Review with Sentiment"
  settings       = "{\"anonymous_id\":{\"@path\":\"$.properties.ANONYMOUS_ID\"},\"consent\":{\"@path\":\"$.context.consent\"},\"event_name\":{\"@path\":\"$.event\"},\"message_id\":{\"@path\":\"$.messageId\"},\"properties\":{\"@path\":\"$.properties\"},\"timestamp\":{\"@path\":\"$.receivedAt\"},\"user_id\":{\"@path\":\"$.properties.USER_ID\"}}"
  trigger        = "event = \"new\""
}