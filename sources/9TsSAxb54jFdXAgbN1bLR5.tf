import {
  to = segment_source.id-9TsSAxb54jFdXAgbN1bLR5
  id = "9TsSAxb54jFdXAgbN1bLR5"
}

resource "segment_source" "id-9TsSAxb54jFdXAgbN1bLR5" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Blog"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "http://www.andycogbill.com"
  })
  slug = "blog_site"
}