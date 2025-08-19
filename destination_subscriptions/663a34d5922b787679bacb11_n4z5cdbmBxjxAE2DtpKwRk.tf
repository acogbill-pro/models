import {
  to = segment_destination_subscription.id-663a34d5922b787679bacb11_n4z5cdbmBxjxAE2DtpKwRk
  id = "663a34d5922b787679bacb11:n4z5cdbmBxjxAE2DtpKwRk"
}

resource "segment_destination_subscription" "id-663a34d5922b787679bacb11_n4z5cdbmBxjxAE2DtpKwRk" {
  action_id            = "kp6oMyKQbaeqt6TcwFJop9"
  destination_id       = "663a34d5922b787679bacb11"
  enabled              = false
  model_id             = null
  name                 = "Post Message"
  reverse_etl_schedule = null
  settings = jsonencode({
    icon_url = "https://logo.clearbit.com/segment.com"
    username = "Segment"
  })
  trigger = "event = \"\""
}