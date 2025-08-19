import {
  to = segment_function.id-sfnc_qI7rdN60Zc
  id = "sfnc_qI7rdN60Zc"
}

resource "segment_function" "id-sfnc_qI7rdN60Zc" {
  code          = "// Learn more about source functions API at\n// https://segment.com/docs/connections/sources/source-functions\n\n/**\n * Handle incoming HTTP request\n *\n * @param  {FunctionRequest} request\n * @param  {FunctionSettings} settings\n */\nasync function onRequest(request, settings) {\n\t// const body = request.json()\n\n\t// const endpoint = ''; // replace with your endpoint\n\t// let response\n\n\t// try {\n\t//   response = await fetch(endpoint, {\n\t// \t\tmethod: 'POST',\n\t// \t\theaders: {\n\t// \t\t\tAuthorization: `Basic $${btoa(settings.apiKey + ':')}`,\n\t// \t\t\t'Content-Type': 'application/json'\n\t// \t\t},\n\t// \t\tbody: JSON.stringify(body)\n\t//   });\n\t// } catch (error) {\n\t//   // Retry on connection error\n\t//   throw new RetryError(error.message)\n\t// }\n\n\t// if (response.status >= 500 || response.status === 429) {\n\t//   // Retry on 5xx (server errors) and 429s (rate limits)\n\t//   throw new RetryError(`Failed with $${response.status}`)\n\t// }\n\n\t// See https://segment.com/docs/connections/spec/identify/\n\tSegment.group({\n\t\tgroupId: 'Arnold_McGee_id',\n\t\ttraits: {\n\t\t\tuser_id: '904f64cc-2545-4d72-a10c-96dda13c9a9d',\n\t\t\tuserId: '904f64cc-2545-4d72-a10c-96dda13c9a9d',\n\t\t\tfname: 'Arnold',\n\t\t\tlname: 'McGee'\n\t\t}\n\t});\n\n\t// See https://segment.com/docs/connections/spec/track/\n\t// Segment.track({\n\t//   event: 'Test Event',\n\t//   userId: 'user_id',\n\t//   properties: {\n\t//     testProperty: 'testValue',\n\t//     testProperty2: response.propertyName,\n\t//   }\n\t// })\n\n\t// See https://segment.com/docs/connections/spec/group/\n\t// Segment.group({\n\t//   groupId: 'group_id',\n\t//   userId: 'user_id',\n\t//   traits: {\n\t//     groupName: 'Unicorn'\n\t//   }\n\t// })\n\n\t// See https://segment.com/docs/connections/sources/catalog/libraries/server/object-api/\n\t// Segment.set({\n\t//   collection: 'users',\n\t//   id: 'user_id',\n\t//   properties: {\n\t//     userName: 'Unicorn'\n\t//   }\n\t// })\n}\n"
  description   = null
  display_name  = "API Identify to Group"
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "SOURCE"
  settings = [
  ]
}