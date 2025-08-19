import {
  to = segment_destination_filter.id-6675c3a3f64799ca43a78049_2iCUL1CtFbQchqI6cVAzRMu5h5B
  id = "6675c3a3f64799ca43a78049:2iCUL1CtFbQchqI6cVAzRMu5h5B"
}

resource "segment_destination_filter" "id-6675c3a3f64799ca43a78049_2iCUL1CtFbQchqI6cVAzRMu5h5B" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "6675c3a3f64799ca43a78049"
  enabled        = true
  if             = "!(type = \"identify\")"
  source_id      = "uDHbhFq9Z6nKQHCLEDNAKW"
  title          = "Only Identify Calls"
}