import {
  to = segment_destination.id-6800d249071cbc43edf17e36
  id = "6800d249071cbc43edf17e36"
}

resource "segment_destination" "id-6800d249071cbc43edf17e36" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "6647ba6fcbf77ab7ab48e66f"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Order Dispatcher (Cogbill Demo) (2)"
  settings = jsonencode({
    endpoint       = "https://www.andycogbill.com/api/log/"
    orderEventName = ""
    sourceName     = ""
    spaceName      = ""
  })
  source_id = "coAiUP12TUBsUziLCj6yd4"
}