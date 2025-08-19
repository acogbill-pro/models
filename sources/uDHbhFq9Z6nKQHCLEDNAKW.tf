import {
  to = segment_source.id-uDHbhFq9Z6nKQHCLEDNAKW
  id = "uDHbhFq9Z6nKQHCLEDNAKW"
}

resource "segment_source" "id-uDHbhFq9Z6nKQHCLEDNAKW" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "PetFinder"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "adoption_app"
}