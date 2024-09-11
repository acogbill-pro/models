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
  settings       = "{\"anonymous_id\":{\"@path\":\"$.properties.ANONYMOUS_ID\"},\"consent\":{\"@path\":\"$.context.consent\"},\"event_name\":\"Product Review\",\"message_id\":{\"@path\":\"$.messageId\"},\"properties\":{\"ANONYMOUS_ID\":{\"@path\":\"$.properties.ANONYMOUS_ID\"},\"GENERATED_ID\":{\"@path\":\"$.properties.GENERATED_ID\"},\"ID\":{\"@path\":\"$.properties.ID\"},\"PRICE\":{\"@path\":\"$.properties.PRICE\"},\"PRODUCT_CATEGORY\":{\"@path\":\"$.properties.PRODUCT_CATEGORY\"},\"PRODUCT_DESCRIPTION\":{\"@path\":\"$.properties.PRODUCT_DESCRIPTION\"},\"PRODUCT_NAME\":{\"@path\":\"$.properties.PRODUCT_NAME\"},\"REVIEW\":{\"@path\":\"$.properties.REVIEW\"},\"SENTIMENT_SCORE\":{\"@path\":\"$.properties.SENTIMENT_SCORE\"},\"TIMESTAMP\":{\"@path\":\"$.properties.TIMESTAMP\"},\"USER_ID\":{\"@path\":\"$.properties.USER_ID\"}},\"timestamp\":{\"@path\":\"$.properties.TIMESTAMP\"},\"user_id\":{\"@path\":\"$.properties.USER_ID\"}}"
  trigger        = "event = \"new\" or event = \"updated\""
}