import {
  to = segment_transformation.id-2X50BoOtxXbk6hg6kpUUjinQ5Eb
  id = "2X50BoOtxXbk6hg6kpUUjinQ5Eb"
}

resource "segment_transformation" "id-2X50BoOtxXbk6hg6kpUUjinQ5Eb" {
  destination_metadata_id = "5850d8b680412f644ff55df2"
  enabled                 = false
  fql_defined_properties = [
  ]
  if             = "!(properties.timestamp != null or type = \"identify\" or type = \"group\")"
  name           = "Only Timestamps, Group & Identify Calls"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "5ERQpwNiq1REwofhiy1u6d"
}