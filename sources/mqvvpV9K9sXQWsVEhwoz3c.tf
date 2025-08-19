import {
  to = segment_source.id-mqvvpV9K9sXQWsVEhwoz3c
  id = "mqvvpV9K9sXQWsVEhwoz3c"
}

resource "segment_source" "id-mqvvpV9K9sXQWsVEhwoz3c" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Booking Home"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "https://www.carnival.com/"
  })
  slug = "booking_home"
}