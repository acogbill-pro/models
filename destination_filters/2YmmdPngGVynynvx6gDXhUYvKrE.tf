import {
  to = segment_destination_filter.id-656551d52bc264a518d866ff_2YmmdPngGVynynvx6gDXhUYvKrE
  id = "656551d52bc264a518d866ff:2YmmdPngGVynynvx6gDXhUYvKrE"
}

resource "segment_destination_filter" "id-656551d52bc264a518d866ff_2YmmdPngGVynynvx6gDXhUYvKrE" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "656551d52bc264a518d866ff"
  enabled        = true
  if             = "!(type = \"group\" or type = \"identify\")"
  source_id      = "mnJpSzBb1wJKVYRc3uYnei"
  title          = "Only Group or Identify calls"
}