import {
  to = segment_destination_filter.id-65483c51b61089f1c6a1e242_2XmT1cHh7uHIzjfY6jx3bkSqXep
  id = "65483c51b61089f1c6a1e242:2XmT1cHh7uHIzjfY6jx3bkSqXep"
}

resource "segment_destination_filter" "id-65483c51b61089f1c6a1e242_2XmT1cHh7uHIzjfY6jx3bkSqXep" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "65483c51b61089f1c6a1e242"
  enabled        = true
  if             = "!(type = \"group\")"
  source_id      = "5ERQpwNiq1REwofhiy1u6d"
  title          = "Only Group"
}