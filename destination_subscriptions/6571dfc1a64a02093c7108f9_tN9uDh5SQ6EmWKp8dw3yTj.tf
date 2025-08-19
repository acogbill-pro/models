import {
  to = segment_destination_subscription.id-6571dfc1a64a02093c7108f9_tN9uDh5SQ6EmWKp8dw3yTj
  id = "6571dfc1a64a02093c7108f9:tN9uDh5SQ6EmWKp8dw3yTj"
}

resource "segment_destination_subscription" "id-6571dfc1a64a02093c7108f9_tN9uDh5SQ6EmWKp8dw3yTj" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "6571dfc1a64a02093c7108f9"
  enabled        = false
  model_id       = "9APfcpgDLxcEhpFR5KzquX"
  name           = "Entity subscription"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({})
  trigger  = "event = \"new\" or event = \"updated\" or event = \"deleted\""
}