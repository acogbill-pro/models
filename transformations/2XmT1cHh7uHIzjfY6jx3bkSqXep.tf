import {
  to = segment_transformation.id-2XmT1cHh7uHIzjfY6jx3bkSqXep
  id = "2XmT1cHh7uHIzjfY6jx3bkSqXep"
}

resource "segment_transformation" "id-2XmT1cHh7uHIzjfY6jx3bkSqXep" {
  destination_metadata_id = "65483c32146674bccc6e8f3e"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "!(type = \"group\")"
  name           = "Only Group"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "5ERQpwNiq1REwofhiy1u6d"
}