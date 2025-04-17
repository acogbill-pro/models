import {
  to = segment_destination.id-6800d3bdce4265ec58fdc017
  id = "6800d3bdce4265ec58fdc017"
}

resource "segment_destination" "id-6800d3bdce4265ec58fdc017" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "6647ba6fcbf77ab7ab48e66f"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Order Dispatcher (Cogbill Demo) (3)"
  settings = jsonencode({
    endpoint       = "https://www.andycogbill.com/api/log/"
    orderEventName = "Sample"
    sourceName     = ""
    spaceName      = ""
  })
  source_id = "cuhvL1s5tygSmJyLqvM1pL"
}