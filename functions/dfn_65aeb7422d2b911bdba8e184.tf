import {
  to = segment_function.id-dfn_65aeb7422d2b911bdba8e184
  id = "dfn_65aeb7422d2b911bdba8e184"
}

resource "segment_function" "id-dfn_65aeb7422d2b911bdba8e184" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\n/**\n * @param {SpecTrack} event The track event\n * @param {Object.<string, any>} settings Custom settings\n * @return void\n */\nasync function onTrack(event, settings) {\n\tlet Body = 'Welcome to the hackathon!';\n\tlet phone = '+19177576756';\n\t//\tlet phone = await getPersonaNumber(event, settings);\n\tconst To = phone;\n\n\tif (event && event.event === settings.triggeringEventName) {\n\t\tawait sendText(\n\t\t\t{\n\t\t\t\tFrom: settings.twilioFrom || '+18455346456',\n\t\t\t\tTo,\n\t\t\t\tBody\n\t\t\t},\n\t\t\tsettings\n\t\t);\n\t}\n}\n\n/**\n * Sends SMS or WhatsApp message with Twilio\n *\n * https://www.twilio.com/docs/sms\n * https://www.twilio.com/docs/whatsapp\n *\n */\nasync function sendText(params, settings) {\n\tconst endpoint = `https://api.twilio.com/2010-04-01/Accounts/$${settings.twilioAccountId}/Messages.json`;\n\tawait fetch(endpoint, {\n\t\tmethod: 'POST',\n\t\theaders: {\n\t\t\tAuthorization: `Basic $${btoa(\n\t\t\t\tsettings.twilioAccountId + ':' + settings.twilioToken\n\t\t\t)}`,\n\t\t\t'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'\n\t\t},\n\t\tbody: toFormParams(params)\n\t});\n}\n\n/**\n * Places a Twilio phone call.\n *\n * https://www.twilio.com/docs/voice\n *\n */\n\nasync function getPersonaNumber(event, settings) {\n\tlet prefix = 'user_id:';\n\tlet value = event.userId;\n\tlet personasUrl =\n\t\t'https://profiles.segment.com/v1/spaces/' +\n\t\tsettings.profileSpaceId +\n\t\t'/collections/users/profiles/' +\n\t\tprefix +\n\t\tvalue +\n\t\t'/external_ids';\n\n\tconst profileApiResponse = await fetch(personasUrl, {\n\t\theaders: new Headers({\n\t\t\tAuthorization: 'Basic ' + btoa(settings.profileApiToken + ':'),\n\t\t\t'Content-Type': 'application/json'\n\t\t}),\n\t\tmethod: 'get'\n\t});\n\n\tif (profileApiResponse.ok) {\n\t\tvar personasUserObject = await profileApiResponse.json();\n\t\tvar phoneNumber = await getPhoneNumber(personasUserObject);\n\t\treturn phoneNumber;\n\t} else {\n\t\tif (profileApiResponse.status >= 500 || profileApiResponse.status == 429) {\n\t\t\tconsole.log('Personas Profile API error. Function will be retried');\n\t\t\tthrow new RetryError(\n\t\t\t\t'Personas Profile API error. Function will be retried. Status: ' +\n\t\t\t\t\tprofileApiResponse.status +\n\t\t\t\t\t' , ' +\n\t\t\t\t\tprofileApiResponse.statusText +\n\t\t\t\t\t'.\\n User ' +\n\t\t\t\t\tevent.userId\n\t\t\t);\n\t\t} else {\n\t\t\tthrow new Error(\n\t\t\t\t'Personas Profile API (/traits) error, exiting. Status: ' +\n\t\t\t\t\tprofileApiResponse.status +\n\t\t\t\t\t' , ' +\n\t\t\t\t\tprofileApiResponse.statusText +\n\t\t\t\t\t'.\\n User ' +\n\t\t\t\t\tevent.userId +\n\t\t\t\t\t' ' +\n\t\t\t\t\tpersonasUrl\n\t\t\t);\n\t\t}\n\t}\n}\n\nasync function getPhoneNumber(response) {\n\tlet datalist = response.data;\n\tfor (let i = 0; i < datalist.length; i++) {\n\t\tif (datalist[i].type == 'phone') {\n\t\t\treturn datalist[i].id;\n\t\t}\n\t}\n}\n\nfunction toFormParams(params) {\n\treturn Object.entries(params)\n\t\t.map(([key, value]) => {\n\t\t\tconst paramName = encodeURIComponent(key);\n\t\t\tconst param = encodeURIComponent(value);\n\t\t\treturn `$${paramName}=$${param}`;\n\t\t})\n\t\t.join('&');\n}\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/identify/\n\tthrow new EventNotSupported('identify is not supported');\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/55afa39c-a768-4c05-bfb0-51acd00ab4a9.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Profile API Token"
      name        = "profileApiToken"
      required    = false
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Profile Space ID"
      name        = "profileSpaceId"
      required    = false
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Triggering Event Name"
      name        = "triggeringEventName"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Twilio Account ID"
      name        = "twilioAccountId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Twilio From"
      name        = "twilioFrom"
      required    = false
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Twilio Token"
      name        = "twilioToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}