import {
  to = segment_function.id-dfn_63bf0fad5a0cd2d1c4501270
  id = "dfn_63bf0fad5a0cd2d1c4501270"
}

resource "segment_function" "id-dfn_63bf0fad5a0cd2d1c4501270" {
  code          = "/// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n\tconst eventName = event.event;\n\tconst event_properties = event.properties;\n\n\tconst campaignTouchIndex = settings.campaignNames.indexOf(eventName);\n\n\tif (campaignTouchIndex < 0) {\n\t\tconsole.log('Track Event name not valid', eventName);\n\t\treturn;\n\t}\n\t// Call Profile API\n\tconst From = '+18455346456';\n\tconst To = '+19177576756';\n\tconst Body = settings.messageText[campaignTouchIndex];\n\tconst Media = settings.messageImages[campaignTouchIndex];\n\n\tconst body = {\n\t\tFrom,\n\t\tTo,\n\t\tBody,\n\t\tMedia\n\t};\n\n\tconst encodedFrom = encodeURIComponent(From);\n\tconst encodedTo = encodeURIComponent(To);\n\tconst encodedBody = encodeURIComponent(Body);\n\tconst encodedMedia = encodeURIComponent(Media);\n\n\tconst requestURL = `https://cogbill-demo-4919.twil.io/mms?From=$${encodedFrom}&To=$${encodedTo}&Body=$${encodedBody}&Media=$${encodedMedia}`;\n\tconsole.log('Request URL', requestURL);\n\n\tawait fetch(requestURL, {\n\t\tmethod: 'GET',\n\t\theaders: {\n\t\t\t'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE,OPTIONS',\n\t\t\t'Access-Control-Allow-Headers': 'Content-Type',\n\t\t\t'Content-Type': 'application/json'\n\t\t}\n\t}).then((result, error) => {\n\t\tif (error) console.log(error);\n\t\tconsole.log('successfully sent MMS');\n\t});\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/42dc0ce3-ca14-4f99-84e7-f8c66e71b213.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "List"
      name        = "list"
      required    = false
      sensitive   = false
      type        = "ARRAY"
    },
    {
      description = "Images to send as MMS"
      label       = "Message Images"
      name        = "messageImages"
      required    = false
      sensitive   = false
      type        = "ARRAY"
    },
    {
      description = "Samsung AAL Campaign Names"
      label       = "campaignNames"
      name        = "campaignNames"
      required    = false
      sensitive   = false
      type        = "ARRAY"
    },
    {
      description = "Text to send with MMS"
      label       = "Message Text"
      name        = "messageText"
      required    = false
      sensitive   = false
      type        = "ARRAY"
    },
  ]
}