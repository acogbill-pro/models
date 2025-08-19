import {
  to = segment_destination_filter.id-656627f456597a110f09b65e_2YoZg0FNY3Uj3UrfsQ0WPn9REMr
  id = "656627f456597a110f09b65e:2YoZg0FNY3Uj3UrfsQ0WPn9REMr"
}

resource "segment_destination_filter" "id-656627f456597a110f09b65e_2YoZg0FNY3Uj3UrfsQ0WPn9REMr" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "656627f456597a110f09b65e"
  enabled        = true
  if             = "!(type = \"identify\" and type = \"group\")"
  source_id      = "5ERQpwNiq1REwofhiy1u6d"
  title          = "Only Group and Identify"
}