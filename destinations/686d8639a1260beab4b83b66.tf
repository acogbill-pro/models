import {
  to = segment_destination.id-686d8639a1260beab4b83b66
  id = "686d8639a1260beab4b83b66"
}

resource "segment_destination" "id-686d8639a1260beab4b83b66" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "5f7dd6d21ad74f3842b1fc47"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Amplitude (Actions)"
  settings = jsonencode({
    apiKey    = ""
    endpoint  = "north_america"
    secretKey = ""
  })
  source_id = "2TapZFYdqrQMgoXiU2JZCU"
}