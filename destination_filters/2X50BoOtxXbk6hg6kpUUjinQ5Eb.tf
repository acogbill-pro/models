import {
  to = segment_destination_filter.id-6532f1d28efb655e194bb12b_2X50BoOtxXbk6hg6kpUUjinQ5Eb
  id = "6532f1d28efb655e194bb12b:2X50BoOtxXbk6hg6kpUUjinQ5Eb"
}

resource "segment_destination_filter" "id-6532f1d28efb655e194bb12b_2X50BoOtxXbk6hg6kpUUjinQ5Eb" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = "Only repeats an event if it has a `timestamp` property."
  destination_id = "6532f1d28efb655e194bb12b"
  enabled        = false
  if             = "!(properties.timestamp != null or type = \"identify\" or type = \"group\")"
  source_id      = "5ERQpwNiq1REwofhiy1u6d"
  title          = "Only Timestamps, Group & Identify Calls"
}