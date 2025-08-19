import {
  to = segment_function.id-sfnc_rMI0JNJcya
  id = "sfnc_rMI0JNJcya"
}

resource "segment_function" "id-sfnc_rMI0JNJcya" {
  code          = "// Learn more about source functions API at\n// https://segment.com/docs/connections/sources/source-functions\n\n/**\n * Handle incoming HTTP request\n *\n * @param  {FunctionRequest} request\n * @param  {FunctionSettings} settings\n */\nasync function onRequest(request, settings) {\n\tconst body = await request.json();\n\n\tconst {\n\t\tgroupId: originalGroupId,\n\t\ttraits: originalTraits,\n\t\tuserId: originalUserId,\n\t\tanonymousId: originalAnonymousId\n\t} = body;\n\n\ttry {\n\t\tconst groupId = originalUserId ? originalUserId : originalAnonymousId;\n\n\t\tconst traits = Object.assign(originalTraits, {\n\t\t\tfname: originalTraits.name,\n\t\t\tlname: 'COMPANY',\n\t\t\tuser_id: originalGroupId,\n\t\t\tgroupId\n\t\t});\n\n\t\tconst payload = {\n\t\t\tuserId: originalGroupId,\n\t\t\ttraits\n\t\t};\n\n\t\t// console.log(payload);\n\t\tSegment.identify(payload);\n\t} catch (e) {\n\t\tthrow new RetryError('Error in converting Group to Identify, retrying', e);\n\t}\n\n\ttry {\n\t\tconst userIdForGroup = originalUserId\n\t\t\t? originalUserId\n\t\t\t: originalAnonymousId;\n\n\t\t// console.log('fetchingprofile for', userIdForGroup);\n\n\t\t// fetchProfile(userIdForGroup, settings)\n\t\t// \t.then(response => {\n\t\t// \t\tconsole.log(response);\n\t\t// \t})\n\t\t// \t.catch(e => console.log('Error fetching from Profile API', e));\n\n\t\t// delete userTraits.group_id\n\t\t// delete userTraits.user_id\n\t\t// delete userTraits.userId\n\n\t\t// console.log(userTraits)\n\n\t\tconst groupPayload = {\n\t\t\tgroupId: userIdForGroup,\n\t\t\tuserId: originalGroupId,\n\t\t\ttraits: {\n\t\t\t\tname: userIdForGroup\n\t\t\t}\n\t\t};\n\n\t\t// console.log(groupPayload);\n\n\t\tSegment.group(groupPayload);\n\t} catch (e) {\n\t\tthrow new RetryError('Error in converting back to Group, retrying', e);\n\t}\n\t// See https://segment.com/docs/connections/spec/identify/\n\t//\n\n\t// See https://segment.com/docs/connections/spec/track/\n\t// Segment.track({\n\t//   event: 'Test Event',\n\t//   userId: 'user_id',\n\t//   properties: {\n\t//     testProperty: 'testValue',\n\t//     testProperty2: response.propertyName,\n\t//   }\n\t// })\n\n\t// See https://segment.com/docs/connections/spec/group/\n\t// Segment.group({\n\t//   groupId: 'group_id',\n\t//   userId: 'user_id',\n\t//   traits: {\n\t//     groupName: 'Unicorn'\n\t//   }\n\t// })\n\n\t// See https://segment.com/docs/connections/sources/catalog/libraries/server/object-api/\n\t// Segment.set({\n\t//   collection: 'users',\n\t//   id: 'user_id',\n\t//   properties: {\n\t//     userName: 'Unicorn'\n\t//   }\n\t// })\n}\n//\n// async function fetchProfile(userId, settings) {\n// \tconsole.log('running fetchProfile');\n// \tlet response;\n\n// \ttry {\n// \t\tconst endpoint = `https://profiles.segment.com/v1/spaces/$${settings.profileSpaceId}/collections/users/profiles/user_id:$${userId}/traits?limit=200`;\n\n// \t\tconst options = {\n// \t\t\tmethod: 'GET',\n// \t\t\theaders: {\n// \t\t\t\t'Content-Type': 'application/json',\n// \t\t\t\t// NOTE the `:` after the Token in the below\n// \t\t\t\tAuthorization: `Basic $${Buffer.from(\n// \t\t\t\t\t`$${settings.profileAccessToken}:`\n// \t\t\t\t).toString('base64')}`\n// \t\t\t}\n// \t\t};\n// \t\t// console.log('end point', endpoint, options);\n// \t\tconst response = await fetch(endpoint, options);\n// \t\tconsole.log('fetchProfile response', response);\n// \t\treturn response.json();\n// \t} catch (e) {\n// \t\tthrow new RetryError('Error fetching profile; retrying', e);\n// \t}\n\n// \treturn response;\n// }\n"
  description   = null
  display_name  = "API Group to Identify"
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "SOURCE"
  settings = [
    {
      description = ""
      label       = "Profile Access Token"
      name        = "profileAccessToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Profile Space ID"
      name        = "profileSpaceId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}