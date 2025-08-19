import {
  to = segment_function.id-dfn_63c05f64b2f693702102303b
  id = "dfn_63c05f64b2f693702102303b"
}

resource "segment_function" "id-dfn_63c05f64b2f693702102303b" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\n/*async function onTrack(event, settings) {\n  // Learn more at https://segment.com/docs/connections/spec/track/\n  const endpoint = ''; // replace with your endpoint\n  let response;\n\n  try {\n    response = await fetch(endpoint, {\n  \t\tmethod: 'POST',\n  \t\theaders: {\n  \t\t\tAuthorization: `Basic $${btoa(settings.apiKey + ':')}`,\n  \t\t\t'Content-Type': 'application/json'\n  \t\t},\n  \t\tbody: JSON.stringify(event)\n    });\n  } catch (error) {\n    // Retry on connection error\n    throw new RetryError(error.message);\n  }\n\n  if (response.status >= 500 || response.status === 429) {\n    // Retry on 5xx (server errors) and 429s (rate limits)\n    throw new RetryError(`Failed with $${response.status}`);\n  }\n}*/\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/identify/\n\tconst hookURL =\n\t\t'https://fn.segmentapis.com/?b=cFpxWlc2clpZNlNoQkZQbk1Od1cyZTo6dHByUUhmQ0dEbzNSNGJCTzMzZjdxcHIzTWNnRHdySjg=';\n\n\tlet response;\n\n\ttry {\n\t\tresponse = await fetch(hookURL, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\t//Authorization: `Basic $${btoa(settings.apiKey + ':')}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: '{}'\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\n\tif (response.status >= 500 || response.status === 429) {\n\t\t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\tthrow new RetryError(`Failed with $${response.status}`);\n\t}\n\n\t// rest of function\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/2f03246e-bb87-4950-9559-5a32fdb1e92b.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Template ID"
      name        = "customString"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}