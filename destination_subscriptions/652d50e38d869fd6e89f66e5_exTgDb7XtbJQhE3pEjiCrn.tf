import {
  to = segment_destination_subscription.id-652d50e38d869fd6e89f66e5_exTgDb7XtbJQhE3pEjiCrn
  id = "652d50e38d869fd6e89f66e5:exTgDb7XtbJQhE3pEjiCrn"
}

resource "segment_destination_subscription" "id-652d50e38d869fd6e89f66e5_exTgDb7XtbJQhE3pEjiCrn" {
  action_id            = "gx6uTEZ75m3X6bhYrCqLFi"
  destination_id       = "652d50e38d869fd6e89f66e5"
  enabled              = false
  model_id             = null
  name                 = "Send API Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    contactKey = {
      "@path" = "$.userId"
    }
  })
  trigger = "event = \"\""
}