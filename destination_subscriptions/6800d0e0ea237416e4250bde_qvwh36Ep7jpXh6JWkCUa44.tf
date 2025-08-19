import {
  to = segment_destination_subscription.id-6800d0e0ea237416e4250bde_qvwh36Ep7jpXh6JWkCUa44
  id = "6800d0e0ea237416e4250bde:qvwh36Ep7jpXh6JWkCUa44"
}

resource "segment_destination_subscription" "id-6800d0e0ea237416e4250bde_qvwh36Ep7jpXh6JWkCUa44" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "6800d0e0ea237416e4250bde"
  enabled        = false
  model_id       = "8akZ9a4ejF4BvxNdRZJRDn"
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