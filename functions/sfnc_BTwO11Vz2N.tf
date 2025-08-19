import {
  to = segment_function.id-sfnc_BTwO11Vz2N
  id = "sfnc_BTwO11Vz2N"
}

resource "segment_function" "id-sfnc_BTwO11Vz2N" {
  code          = "// Learn more about source functions API at\n// https://segment.com/docs/connections/sources/source-functions\n\n/**\n * Handle incoming HTTP request\n *\n * @param  {FunctionRequest} request\n * @param  {FunctionSettings} settings\n */\nasync function onRequest(request, settings) {\n\tconst body = request.json();\n\tif (!body.properties.timestamp) return;\n\t// Replace event name and property name with the right string and key\n\ttry {\n\t\tconst timestamp = body.properties.timestamp;\n\t\tconst date = new Date(timestamp);\n\n\t\tif (new Date(timestamp)) {\n\t\t\tconst formattedDate = formatDate(date);\n\t\t\tconst properties = Object.assign(body.properties, { formattedDate });\n\t\t\tbody.properties = properties;\n\t\t}\n\t} catch {\n\t\tconsole.log('Timestamp must be formatted correctly');\n\t}\n\n\t// See https://segment.com/docs/connections/spec/track/\n\tSegment.track(body);\n}\n\nfunction formatDate(withDate) {\n\treturn withDate.toLocaleDateString('en-US');\n}\n"
  description   = "Formats a timestamp property as an additional human-readable string property."
  display_name  = "Timestamp Formatter"
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "SOURCE"
  settings = [
  ]
}