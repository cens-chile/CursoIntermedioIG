Instance: birthPlace-extension
InstanceOf: SearchParameter
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2022-05-23T15:42:22.824+00:00"
* meta.source = "#1713de7ffdefbac0"
* version = "1"
* name = "birthPlace"
* status = #active
* experimental = true
* date = "2020-05-28"
* publisher = "Cens"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://cens.cl"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "contacto@cens.cl"
* description = "Busqueda de un Patient por el birthPlace"
* code = #birthplace
* base = #Patient
* type = #string
* expression = "Patient.extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace')"
* xpathUsage = #normal