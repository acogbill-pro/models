import {
  to = segment_source.id-mwZniPLvMWcJTaoLTNtv7d
  id = "mwZniPLvMWcJTaoLTNtv7d"
}

resource "segment_source" "id-mwZniPLvMWcJTaoLTNtv7d" {
  enabled = true
  labels  = null
  metadata = {
    id = "UBrsG9RVzw"
  }
  name = "iOS App"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "ios_app"
}