import {
  to = segment_transformation.id-2R6ntdxRicRAfzHgakOfeA1avus
  id = "2R6ntdxRicRAfzHgakOfeA1avus"
}

resource "segment_transformation" "id-2R6ntdxRicRAfzHgakOfeA1avus" {
  destination_metadata_id = null
  enabled                 = false
  fql_defined_properties = [
  ]
  if             = "event=\"Product Added\""
  name           = "Product Added Rename"
  new_event_name = "Product Added to Cart"
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "5ERQpwNiq1REwofhiy1u6d"
}