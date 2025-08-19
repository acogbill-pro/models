import {
  to = segment_function.id-dfn_65483c32146674bccc6e8f3e
  id = "dfn_65483c32146674bccc6e8f3e"
}

resource "segment_function" "id-dfn_65483c32146674bccc6e8f3e" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\tthrow new EventNotSupported('track is not supported');\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n}\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// // Learn more at https://segment.com/docs/connections/spec/identify/\n\n\tthrow new EventNotSupported('identify is not supported');\n\t// because Group needs a userId\n\n\t// const endpoint = settings.identifyToGroupApi; // replace with your endpoint\n\t// let response;\n\n\t// try {\n\t// \tresponse = await fetch(endpoint, {\n\t// \t\tmethod: 'POST',\n\t// \t\theaders: {\n\t// \t\t\tAuthorization: `Bearer $${settings.papiToken}`,\n\t// \t\t\t'Content-Type': 'application/json'\n\t// \t\t},\n\t// \t\tbody: JSON.stringify(event)\n\t// \t});\n\t// } catch (error) {\n\t// \t// Retry on connection error\n\t// \tthrow new RetryError(error.message);\n\t// }\n\n\t// if (response.status >= 500 || response.status === 429) {\n\t// \t// Retry on 5xx (server errors) and 429s (rate limits)\n\t// \tthrow new RetryError(`Failed with $${response.status}`);\n\t// }\n\n\t// console.log(response);\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tconst endpoint = settings.groupToIdentifyHookUrl;\n\tlet response;\n\n\ttry {\n\t\tresponse = await fetch(endpoint, {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Bearer $${settings.papiToken}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: JSON.stringify(event)\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\n\tif (response.status >= 500 || response.status === 429) {\n\t\t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\tthrow new RetryError(`Failed with $${response.status}`);\n\t}\n\n\t// console.log(response);\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Group to Identify Hook URL"
      name        = "groupToIdentifyHookUrl"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "PAPI Token"
      name        = "papiToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}