import {
  to = segment_destination_subscription.id-6619b801712ae58c68b1bc5c_733tRbNMMoiCtc5FQedatX
  id = "6619b801712ae58c68b1bc5c:733tRbNMMoiCtc5FQedatX"
}

resource "segment_destination_subscription" "id-6619b801712ae58c68b1bc5c_733tRbNMMoiCtc5FQedatX" {
  action_id      = "oiFvX4YXwyaPVysi1t7mtz"
  destination_id = "6619b801712ae58c68b1bc5c"
  enabled        = true
  model_id       = "bgwPiXAwQ2GWHdAvuhev8L"
  name           = "Review with Sentiment"
  settings       = "{\"anonymous_id\":{\"@path\":\"$.properties.ANONYMOUS_ID\"},\"consent\":{\"@path\":\"$.context.consent\"},\"enable_batching\":false,\"event_name\":\"Product Review\",\"message_id\":{\"@path\":\"$.messageId\"},\"properties\":{\"@path\":\"$.properties\"},\"timestamp\":{\"@path\":\"$.properties.TIMESTAMP\"},\"traits\":{\"@path\":\"$.properties\"},\"user_id\":{\"@path\":\"$.properties.USER_ID\"}}"
  trigger        = "event = \"new\" or event = \"updated\""
}