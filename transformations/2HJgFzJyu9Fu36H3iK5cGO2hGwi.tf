import {
  to = segment_transformation.id-2HJgFzJyu9Fu36H3iK5cGO2hGwi
  id = "2HJgFzJyu9Fu36H3iK5cGO2hGwi"
}

resource "segment_transformation" "id-2HJgFzJyu9Fu36H3iK5cGO2hGwi" {
  destination_metadata_id = "6346d47b35ae9c388741e2de"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "event = \"Article Favorited\""
  name           = "Lob: fullText to text"
  new_event_name = null
  property_renames = [
    {
      new_name = "text"
      old_name = "fullText"
    },
  ]
  property_value_transformations = [
  ]
  source_id = "9TsSAxb54jFdXAgbN1bLR5"
}