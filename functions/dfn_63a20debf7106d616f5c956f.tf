import {
  to = segment_function.id-dfn_63a20debf7106d616f5c956f
  id = "dfn_63a20debf7106d616f5c956f"
}

resource "segment_function" "id-dfn_63a20debf7106d616f5c956f" {
  code          = "/// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n\tvar se_name = 'Andy Cogbill';\n\tvar event_properties = event.properties;\n\n\t// EXAMPLE EVENT - Replace with Order Completed / Checkout Finished\n\tif (event.event === 'Order Completed') {\n\t\tevent_properties.service_tier =\n\t\t\tevent_properties.value < 50\n\t\t\t\t? 'basic'\n\t\t\t\t: event_properties.value > 100\n\t\t\t\t? 'premium'\n\t\t\t\t: 'deluxe';\n\n\t\t/**\n\t\t * ParentShop's Engineering Team has provided the code snippet below,\n\t\t * This is the API call to the Shipping Department.\n\t\t * --- No Code Changes Needed ---\n\t\t */\n\t\tawait fetch('https://webhook.site/9ef92a46-7ef6-4f76-b4ea-e2c98f718baf', {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: JSON.stringify({\n\t\t\t\tevent_name: event.event,\n\t\t\t\tevent_properties,\n\t\t\t\ttimestamp: event.timestamp,\n\t\t\t\tse_name: se_name\n\t\t\t})\n\t\t});\n\t}\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/d0746d2d-ce0f-4d21-ba29-c977cf1d05d0.png"
  resource_type = "DESTINATION"
  settings = [
  ]
}