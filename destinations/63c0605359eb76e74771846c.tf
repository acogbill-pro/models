import {
  to = segment_destination.id-63c0605359eb76e74771846c
  id = "63c0605359eb76e74771846c"
}

resource "segment_destination" "id-63c0605359eb76e74771846c" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "63c05f64b2f693702102303b"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Function - New Customer (Cogbill Demo)"
  settings = jsonencode({
    apiKey       = ""
    customString = "abc123"
  })
  source_id = "8yfSeB7QQVVkZYHRhTYYiM"
}