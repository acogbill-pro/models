import {
  to = segment_source.id-fYDrhKp9yJqfCTdeZnPxBZ
  id = "fYDrhKp9yJqfCTdeZnPxBZ"
}

resource "segment_source" "id-fYDrhKp9yJqfCTdeZnPxBZ" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Simple Site"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "http://www.andycogbill.com"
  })
  slug = "simple_site"
}