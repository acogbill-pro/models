import {
  to = segment_source.id-puUsajTiwivuYkSyjRRrs1
  id = "puUsajTiwivuYkSyjRRrs1"
}

resource "segment_source" "id-puUsajTiwivuYkSyjRRrs1" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Reverse ETL"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "reverse_etl"
}