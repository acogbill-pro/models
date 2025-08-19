import {
  to = segment_source.id-mRFzzym5afrgcSBDpCzPfC
  id = "mRFzzym5afrgcSBDpCzPfC"
}

resource "segment_source" "id-mRFzzym5afrgcSBDpCzPfC" {
  enabled = false
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "3hbak7a9"
  }
  name = "Zendesk"
  settings = jsonencode({
    subdomain = "segment"
  })
  slug = "zendesk"
}