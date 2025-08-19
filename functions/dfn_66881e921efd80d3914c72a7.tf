import {
  to = segment_function.id-dfn_66881e921efd80d3914c72a7
  id = "dfn_66881e921efd80d3914c72a7"
}

resource "segment_function" "id-dfn_66881e921efd80d3914c72a7" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\tif (event.event !== 'Send SMS') return;\n\tconst { userId } = event;\n\tif (!userId) return;\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n\tconst endpoint = `https://profiles.segment.com/v1/spaces/$${settings.spaceId}/collections/users/profiles/user_id:$${userId}/traits?limit=200`;\n\tlet response;\n\n\tconst options = {\n\t\tmethod: 'GET',\n\t\theaders: {\n\t\t\t'Content-Type': 'application/json',\n\t\t\t// NOTE the `:` after the Token in the below\n\t\t\tAuthorization: `Basic $${Buffer.from(`$${settings.accessToken}:`).toString(\n\t\t\t\t'base64'\n\t\t\t)}`\n\t\t}\n\t};\n\n\ttry {\n\t\tresponse = await fetch(endpoint, options);\n\t\tconst fetchedProfile = await response.json();\n\t\tconsole.log('response from Profile API: ', fetchedProfile);\n\n\t\tconst { phone, fname } = fetchedProfile.traits;\n\t\tconst promoText =\n\t\t\tfetchedProfile.traits.last_product_added_to_cart ||\n\t\t\t'new phone' + ' in ' + fetchedProfile.traits.preferred_colorway ||\n\t\t\t'your favorite color';\n\t\tconsole.log(promoText);\n\n\t\tif (!fname) return;\n\t\t// Call Profile API\n\t\tconst From = '+18455346456';\n\t\tconst To = phone;\n\t\tconst Body = `Hey there, $${fname}! Here is a promo for you to order that $${promoText}.`;\n\n\t\tconst body = {\n\t\t\tFrom,\n\t\t\tTo,\n\t\t\tBody\n\t\t};\n\n\t\tconst encodedFrom = encodeURIComponent(From);\n\t\tconst encodedTo = encodeURIComponent(To);\n\t\tconst encodedBody = encodeURIComponent(Body);\n\n\t\tconst requestURL = `https://cogbill-demo-4919.twil.io/sms?From=$${encodedFrom}&To=$${encodedTo}&Body=$${encodedBody}`;\n\t\tconsole.log('Request URL', requestURL);\n\n\t\tawait fetch(requestURL, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\t'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE,OPTIONS',\n\t\t\t\t'Access-Control-Allow-Headers': 'Content-Type',\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t}).then((result, error) => {\n\t\t\tif (error) {\n\t\t\t\tconsole.log(error);\n\t\t\t\treturn;\n\t\t\t}\n\t\t\tconsole.log('successfully sent SMS');\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\n\tif (response.status >= 500 || response.status === 429) {\n\t\t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\tthrow new RetryError(`Failed with $${response.status}`);\n\t}\n\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/f6cbe8bf-4404-4db6-93b5-4c62683c1255.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Access Token"
      name        = "accessToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Space ID"
      name        = "spaceId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}