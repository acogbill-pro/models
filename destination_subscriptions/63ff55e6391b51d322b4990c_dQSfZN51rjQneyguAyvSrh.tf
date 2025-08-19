import {
  to = segment_destination_subscription.id-63ff55e6391b51d322b4990c_dQSfZN51rjQneyguAyvSrh
  id = "63ff55e6391b51d322b4990c:dQSfZN51rjQneyguAyvSrh"
}

resource "segment_destination_subscription" "id-63ff55e6391b51d322b4990c_dQSfZN51rjQneyguAyvSrh" {
  action_id      = "r2Ho4HQvhcfqxm1UBFue7K"
  destination_id = "63ff55e6391b51d322b4990c"
  enabled        = false
  model_id       = "wXXEQRpqwDKRjmu1GAS9RU"
  name           = "Send Identify"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({})
  trigger  = "event = \"updated\""
}