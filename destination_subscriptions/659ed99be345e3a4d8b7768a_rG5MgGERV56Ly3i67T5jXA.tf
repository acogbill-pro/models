import {
  to = segment_destination_subscription.id-659ed99be345e3a4d8b7768a_rG5MgGERV56Ly3i67T5jXA
  id = "659ed99be345e3a4d8b7768a:rG5MgGERV56Ly3i67T5jXA"
}

resource "segment_destination_subscription" "id-659ed99be345e3a4d8b7768a_rG5MgGERV56Ly3i67T5jXA" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "659ed99be345e3a4d8b7768a"
  enabled        = false
  model_id       = "jy21svef1eA4HjfmJLBwJz"
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