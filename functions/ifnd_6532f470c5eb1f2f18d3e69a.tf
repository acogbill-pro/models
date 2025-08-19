import {
  to = segment_function.id-ifnd_6532f470c5eb1f2f18d3e69a
  id = "ifnd_6532f470c5eb1f2f18d3e69a"
}

resource "segment_function" "id-ifnd_6532f470c5eb1f2f18d3e69a" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\n\nfunction formatDate(withDate) {\n\treturn withDate.toLocaleDateString('en-US');\n}\n\nasync function onTrack(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n\tif (!event.properties[settings.propertyName])\n\t\tthrow new EventNotSupported('Event requires a timestamp.');\n\t// Replace event name and property name with the right string and key\n\ttry {\n\t\tconst timestamp = event.properties[settings.propertyName];\n\t\tconst date = new Date(timestamp);\n\n\t\tconst formattedDate = formatDate(date);\n\t\tevent.properties[settings.newPropertyName] = formattedDate;\n\t} catch {\n\t\tthrow new EventNotSupported('Timestamp must be formatted correctly');\n\t}\n\n\tevent.name = `$${event.event} - Modified`;\n\tevent.event = `$${event.event} - Dated`;\n\treturn event;\n}\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/identify/\n\t// Learn more at https://segment.com/docs/connections/spec/identify/\n\tconst endpoint = 'https://www.andycogbill.com/api/user/enrichment'; // replace with your endpoint\n\tlet response;\n\n\ttry {\n\t\tresponse = await fetch(endpoint, {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\t// Authorization: `Basic $${btoa(settings.apiKey + ':')}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: JSON.stringify(event)\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\n\tconsole.log(response);\n\n\tif (response.status >= 500 || response.status === 429) {\n\t\t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\tthrow new RetryError(`Failed with $${response.status}`);\n\t}\n\n\t// Fetch worked\n\tconst json = await response.json();\n\tconst { traits } = json.data;\n\tconsole.log(traits);\n\tevent.traits = Object.assign(event.traits, traits);\n\treturn event;\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\treturn event;\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "INSERT_DESTINATION"
  settings = [
    {
      description = ""
      label       = "New Property Name"
      name        = "newPropertyName"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Property Name"
      name        = "propertyName"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}