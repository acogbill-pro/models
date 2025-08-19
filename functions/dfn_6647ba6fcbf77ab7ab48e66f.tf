import {
  to = segment_function.id-dfn_6647ba6fcbf77ab7ab48e66f
  id = "dfn_6647ba6fcbf77ab7ab48e66f"
}

resource "segment_function" "id-dfn_6647ba6fcbf77ab7ab48e66f" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\nasync function dispatchObject(object, endpoint) {\n\tlet response;\n\n\ttry {\n\t\tresponse = await fetch(endpoint, {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\t// Authorization: `Basic $${btoa(settings.apiKey + ':')}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: JSON.stringify(object)\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\n\tif (response.status >= 500 || response.status === 429) {\n\t\t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\tthrow new RetryError(`Failed with $${response.status}`);\n\t}\n}\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\tif (event.event !== settings.orderEventName) return;\n\ttry {\n\t\tconsole.log(event.properties);\n\n\t\t// extract event from Event Triggered Journey\n\t\tconst eventContext = event.properties.journey_context.events;\n\t\tconst events = Object.values(eventContext);\n\t\tconst baseEvent = events[0];\n\n\t\t// extract event properties\n\t\tconst { event: name, properties } = baseEvent;\n\t\tconst { contents, products, value, orderID } = properties;\n\n\t\tconst { userId, anonymousId, timestamp } = event;\n\n\t\t// config\n\t\tconst { endpoint, sourceName, spaceName } = settings;\n\n\t\tconst eventToReturn = {\n\t\t\tevent: 'Order Dispatch',\n\t\t\tuserId,\n\t\t\tanonymousId,\n\t\t\ttimestamp,\n\t\t\torderID,\n\t\t\tqtyPerSKU: contents,\n\t\t\tproducts,\n\t\t\torderTotal: value,\n\t\t\tsource: sourceName,\n\t\t\tspace: spaceName\n\t\t};\n\n\t\tawait dispatchObject(eventToReturn, endpoint);\n\t\t//\n\t} catch (e) {\n\t\tawait logObject('Error in Order Dispatcher onTrack');\n\t\tawait logObject(e);\n\t}\n}\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/identify/\n\tthrow new EventNotSupported('identify is not supported');\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/db325ec3-7cdf-4589-a327-1d78e5c38a41.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "endpoint"
      name        = "endpoint"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "orderEventName"
      name        = "orderEventName"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "sourceName"
      name        = "sourceName"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "spaceName"
      name        = "spaceName"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}