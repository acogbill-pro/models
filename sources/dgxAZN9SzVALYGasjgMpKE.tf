import {
  to = segment_source.id-dgxAZN9SzVALYGasjgMpKE
  id = "dgxAZN9SzVALYGasjgMpKE"
}

resource "segment_source" "id-dgxAZN9SzVALYGasjgMpKE" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Customer Service"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "customer_service"
}