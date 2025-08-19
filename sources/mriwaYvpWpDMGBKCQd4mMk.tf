import {
  to = segment_source.id-mriwaYvpWpDMGBKCQd4mMk
  id = "mriwaYvpWpDMGBKCQd4mMk"
}

resource "segment_source" "id-mriwaYvpWpDMGBKCQd4mMk" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "FoodFinder"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "foodfinder"
}