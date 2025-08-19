import {
  to = segment_source.id-5ERQpwNiq1REwofhiy1u6d
  id = "5ERQpwNiq1REwofhiy1u6d"
}

resource "segment_source" "id-5ERQpwNiq1REwofhiy1u6d" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "prod"
    },
  ]
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Shop"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "http://www.andycogbill.com"
  })
  slug = "shop_site"
}