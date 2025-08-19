import {
  to = segment_destination_subscription.id-663a31c4ec10013de342e4b5_qxw2gaJtvJ2h1bRCkG8HV9
  id = "663a31c4ec10013de342e4b5:qxw2gaJtvJ2h1bRCkG8HV9"
}

resource "segment_destination_subscription" "id-663a31c4ec10013de342e4b5_qxw2gaJtvJ2h1bRCkG8HV9" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "663a31c4ec10013de342e4b5"
  enabled        = true
  model_id       = "ciQryB4NZ76RWKSrAnfQVb"
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