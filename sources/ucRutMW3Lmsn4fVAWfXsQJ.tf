import {
  to = segment_source.id-ucRutMW3Lmsn4fVAWfXsQJ
  id = "ucRutMW3Lmsn4fVAWfXsQJ"
}

resource "segment_source" "id-ucRutMW3Lmsn4fVAWfXsQJ" {
  enabled = true
  labels  = null
  metadata = {
    id = "0yMe8VfuDc"
  }
  name = "Redshift"
  settings = jsonencode({
    database = "solutionseng"
    hostname = "redshift-cluster-1.c0dzby7epbbi.us-west-2.redshift.amazonaws.com"
    port     = "5439"
    username = "segment"
  })
  slug = "redshift"
}