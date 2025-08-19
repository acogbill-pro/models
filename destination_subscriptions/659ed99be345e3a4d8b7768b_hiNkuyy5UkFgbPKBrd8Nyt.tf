import {
  to = segment_destination_subscription.id-659ed99be345e3a4d8b7768b_hiNkuyy5UkFgbPKBrd8Nyt
  id = "659ed99be345e3a4d8b7768b:hiNkuyy5UkFgbPKBrd8Nyt"
}

resource "segment_destination_subscription" "id-659ed99be345e3a4d8b7768b_hiNkuyy5UkFgbPKBrd8Nyt" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "659ed99be345e3a4d8b7768b"
  enabled        = false
  model_id       = "oBsBzutHE9dP8zjohbMTmh"
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