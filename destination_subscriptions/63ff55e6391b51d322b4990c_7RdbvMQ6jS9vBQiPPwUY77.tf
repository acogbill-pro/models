import {
  to = segment_destination_subscription.id-63ff55e6391b51d322b4990c_7RdbvMQ6jS9vBQiPPwUY77
  id = "63ff55e6391b51d322b4990c:7RdbvMQ6jS9vBQiPPwUY77"
}

resource "segment_destination_subscription" "id-63ff55e6391b51d322b4990c_7RdbvMQ6jS9vBQiPPwUY77" {
  action_id      = "oiFvX4YXwyaPVysi1t7mtz"
  destination_id = "63ff55e6391b51d322b4990c"
  enabled        = false
  model_id       = "bPhbTBqrdsBgtsqdswj2s6"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({})
  trigger  = "type = \"track\""
}