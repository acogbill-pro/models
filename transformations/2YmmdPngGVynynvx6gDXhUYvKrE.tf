import {
  to = segment_transformation.id-2YmmdPngGVynynvx6gDXhUYvKrE
  id = "2YmmdPngGVynynvx6gDXhUYvKrE"
}

resource "segment_transformation" "id-2YmmdPngGVynynvx6gDXhUYvKrE" {
  destination_metadata_id = "5850d8b680412f644ff55df2"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "!(type = \"group\" or type = \"identify\")"
  name           = "Only Group or Identify calls"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "mnJpSzBb1wJKVYRc3uYnei"
}