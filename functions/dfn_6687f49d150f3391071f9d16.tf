import {
  to = segment_function.id-dfn_6687f49d150f3391071f9d16
  id = "dfn_6687f49d150f3391071f9d16"
}

resource "segment_function" "id-dfn_6687f49d150f3391071f9d16" {
  code          = "/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// Function to call SOAP API for writing data\n\tasync function writeData(sessionToken, securityToken) {\n\t\tvar myHeaders = new Headers();\n\t\tmyHeaders.append('Content-Type', 'text/xml; charset=utf-8');\n\t\tmyHeaders.append('SOAPAction', 'xtk:persist#Write');\n\t\tmyHeaders.append('Ocp-Apim-Subscription-Key', settings.subKey);\n\t\tmyHeaders.append('cookie', `__sessiontoken=$${sessionToken}`);\n\t\tmyHeaders.append('X-Security-Token', securityToken);\n\n\t\tvar email = event.traits.email; // Extract email from event traits\n\t\tvar groupDecile = event.traits.groupDecile; // Extract email from event traits\n\t\tvar leadID = event.traits.leadID; // Extract email from event traits\n\t\tvar webQualCS = event.traits.webQualCS; // Extract email from event traits\n\t\tvar webQualID = event.traits.webQualID; // Extract email from event traits\n\t\tvar raw = `<?xml version='1.0' encoding='ISO-8859-1'?>\n            <SOAP-ENV:Envelope xmlns:xsd='http://www.w3.org/2001/XMLSchema' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:ns='http://xml.apache.org/xml-soap' xmlns:SOAP-ENV='http://schemas.xmlsoap.org/soap/envelope/'>\n              <SOAP-ENV:Body>\n                <Write xmlns='urn:xtk:persist' SOAP-ENV:encodingStyle='http://schemas.xmlsoap.org/soap/encoding/'>\n                  <__sessiontoken xsi:type='xsd:string'/>\n                  <domDoc xsi:type='ns:Element' SOAP-ENV:encodingStyle='http://xml.apache.org/xml-soap/literalxml'>\n                    <recipient xtkschema=\"nms:recipient\" email=\"$${email}\" decile=\"$${groupDecile}\" leadId='$${leadID}' webQualCS=\"$${webQualCS}\" webQualID=\"$${webQualID}\" campaignName=\"HGV_POT_2\" _key=\"@email\"/>\n                  </domDoc>\n                </Write>\n              </SOAP-ENV:Body>\n            </SOAP-ENV:Envelope>`;\n\n\t\tvar requestOptions = {\n\t\t\tmethod: 'POST',\n\t\t\theaders: myHeaders,\n\t\t\tbody: raw,\n\t\t\tredirect: 'follow'\n\t\t};\n\n\t\ttry {\n\t\t\tconst response = await fetch(settings.endPoint, requestOptions);\n\t\t\tif (!response.ok) {\n\t\t\t\tthrow new Error(`HTTP error! status: $${response.status}`);\n\t\t\t}\n\t\t\tconst result = await response.text();\n\t\t\tconsole.log(result);\n\t\t} catch (error) {\n\t\t\tconsole.log('error', error);\n\t\t\tthrow error;\n\t\t}\n\t}\n\n\t// Function to call SOAP API for session login\n\tasync function callSOAPAPI() {\n\t\tvar myHeaders = new Headers();\n\t\tmyHeaders.append('Content-Type', 'text/xml');\n\t\tmyHeaders.append('SOAPAction', 'xtk:session#Logon');\n\t\tmyHeaders.append('Ocp-Apim-Subscription-Key', settings.subKey);\n\n\t\tvar raw =\n\t\t\t'<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:xtk:session\">\\n    <soapenv:Header/>\\n    <soapenv:Body>\\n     <urn:Logon>\\n         <urn:sessiontoken></urn:sessiontoken>\\n         <urn:strLogin>segmentapi</urn:strLogin>\\n         <urn:strPassword>vow@Sdn=5@7iC6Yl7</urn:strPassword>\\n         <urn:elemParameters></urn:elemParameters>\\n     </urn:Logon>\\n </soapenv:Body>\\n</soapenv:Envelope>';\n\n\t\tvar requestOptions = {\n\t\t\tmethod: 'POST',\n\t\t\theaders: myHeaders,\n\t\t\tbody: raw,\n\t\t\tredirect: 'follow'\n\t\t};\n\n\t\ttry {\n\t\t\tconst response = await fetch(settings.endPoint, requestOptions);\n\t\t\tif (!response.ok) {\n\t\t\t\tthrow new Error(`HTTP error! status: $${response.status}`);\n\t\t\t}\n\t\t\tconst result = await response.text();\n\n\t\t\tlet sessionToken, securityToken;\n\t\t\ttry {\n\t\t\t\tsessionToken = result.match(\n\t\t\t\t\t/<pstrSessionToken.*?>(.*?)<\\/pstrSessionToken>/i\n\t\t\t\t)[1];\n\t\t\t\tsecurityToken = result.match(\n\t\t\t\t\t/<pstrSecurityToken.*?>(.*?)<\\/pstrSecurityToken>/i\n\t\t\t\t)[1];\n\t\t\t} catch (e) {\n\t\t\t\tthrow new Error('Error parsing tokens');\n\t\t\t}\n\n\t\t\tawait writeData(sessionToken, securityToken);\n\t\t} catch (error) {\n\t\t\tconsole.log('error', error);\n\t\t\tthrow error;\n\t\t}\n\t}\n\n\tawait callSOAPAPI();\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/c18f19b4-3678-49ed-943f-55b210a17d6e.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Endpoint"
      name        = "endpoint"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Sub Key"
      name        = "subKey"
      required    = true
      sensitive   = true
      type        = "STRING"
    },
  ]
}