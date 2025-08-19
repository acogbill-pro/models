import {
  to = segment_source.id-8i1UoEBqUW99Uy7WECchcv
  id = "8i1UoEBqUW99Uy7WECchcv"
}

resource "segment_source" "id-8i1UoEBqUW99Uy7WECchcv" {
  enabled = false
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Shop - B2B"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "shop_b2b"
}