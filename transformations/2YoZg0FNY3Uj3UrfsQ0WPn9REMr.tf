import {
  to = segment_transformation.id-2YoZg0FNY3Uj3UrfsQ0WPn9REMr
  id = "2YoZg0FNY3Uj3UrfsQ0WPn9REMr"
}

resource "segment_transformation" "id-2YoZg0FNY3Uj3UrfsQ0WPn9REMr" {
  destination_metadata_id = "65483c32146674bccc6e8f3e"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "!(type = \"identify\" and type = \"group\")"
  name           = "Only Group and Identify"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "5ERQpwNiq1REwofhiy1u6d"
}