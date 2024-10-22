import {
  to = segment_destination_subscription.id-6717fec2e126d82a5b8a4353_5Mez1gcKMYkp5A5rj687WZ
  id = "6717fec2e126d82a5b8a4353:5Mez1gcKMYkp5A5rj687WZ"
}

resource "segment_destination_subscription" "id-6717fec2e126d82a5b8a4353_5Mez1gcKMYkp5A5rj687WZ" {
  action_id      = "vm2tNA5U1zxUusQkdC4D7Z"
  destination_id = "6717fec2e126d82a5b8a4353"
  enabled        = false
  model_id       = null
  name           = "Send Identify"
  settings       = "{\"anonymous_id\":{\"@path\":\"$.properties.anonymous_id_c\"},\"consent\":{\"@path\":\"$.context.consent\"},\"engage_space\":\"x2zPLJyKwsPESrDJLQiAGAlIWYH5IYlk\",\"message_id\":{\"@path\":\"$.messageId\"},\"timestamp\":{\"@path\":\"$.receivedAt\"},\"traits\":{\"@path\":\"$.properties\"},\"user_id\":{\"@path\":\"$.properties.user_id_c\"}}"
  trigger        = "event=\"object-destination-data\""
}