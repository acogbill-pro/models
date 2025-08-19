import {
  to = segment_destination_subscription.id-63ff55e6391b51d322b4990c_3h2wvYQYTgV2541zcZ9K97
  id = "63ff55e6391b51d322b4990c:3h2wvYQYTgV2541zcZ9K97"
}

resource "segment_destination_subscription" "id-63ff55e6391b51d322b4990c_3h2wvYQYTgV2541zcZ9K97" {
  action_id      = "r2Ho4HQvhcfqxm1UBFue7K"
  destination_id = "63ff55e6391b51d322b4990c"
  enabled        = false
  model_id       = "a5zu4vDwJL7GsnBFKf1qzy"
  name           = "Send Identify"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({})
  trigger  = "type = \"identify\""
}