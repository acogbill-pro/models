import {
  to = segment_source.id-idnukg1o7DXbYgKmf2xiN5
  id = "idnukg1o7DXbYgKmf2xiN5"
}

resource "segment_source" "id-idnukg1o7DXbYgKmf2xiN5" {
  enabled = false
  labels  = null
  metadata = {
    id = "2baks93n"
  }
  name = "Salesforce"
  settings = jsonencode({
    salesforce-environment = "production"
  })
  slug = "salesforce"
}