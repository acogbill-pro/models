import {
  to = segment_transformation.id-2iCUL1CtFbQchqI6cVAzRMu5h5B
  id = "2iCUL1CtFbQchqI6cVAzRMu5h5B"
}

resource "segment_transformation" "id-2iCUL1CtFbQchqI6cVAzRMu5h5B" {
  destination_metadata_id = "5850d8b680412f644ff55df2"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "!(type = \"identify\")"
  name           = "Only Identify Calls"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "uDHbhFq9Z6nKQHCLEDNAKW"
}