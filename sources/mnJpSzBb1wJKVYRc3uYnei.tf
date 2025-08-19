import {
  to = segment_source.id-mnJpSzBb1wJKVYRc3uYnei
  id = "mnJpSzBb1wJKVYRc3uYnei"
}

resource "segment_source" "id-mnJpSzBb1wJKVYRc3uYnei" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Shop - Enriched"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "shop_enriched"
}