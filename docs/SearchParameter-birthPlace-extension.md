# birthPlace-extension - Este es el título de la guía en | R4 v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **birthPlace-extension**

## SearchParameter: birthPlace-extension (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/curso/SearchParameter/birthPlace-extension | *Version*:0.1.0 |
| Active as of 2020-05-28 | *Computable Name*:birthPlace |

 
Busqueda de un Patient por el birthPlace 

version: 1; Last updated: 2022-05-23 15:42:22+0000; 

Information Source: #1713de7ffdefbac0

## birthPlace

Parameter `birthplace`:`string`

Busqueda de un Patient por el birthPlace

| | |
| :--- | :--- |
| Resource | [Patient](http://hl7.org/fhir/R4/patient.html) |
| Expression | `Patient.extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace')` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "birthPlace-extension",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2022-05-23T15:42:22.824+00:00",
    "source" : "#1713de7ffdefbac0"
  },
  "url" : "http://example.org/curso/SearchParameter/birthPlace-extension",
  "version" : "0.1.0",
  "name" : "birthPlace",
  "status" : "active",
  "experimental" : true,
  "date" : "2020-05-28",
  "publisher" : "CENS",
  "contact" : [
    {
      "name" : "CENS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://cens.cl"
        }
      ]
    }
  ],
  "description" : "Busqueda de un Patient por el birthPlace",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "code" : "birthplace",
  "base" : ["Patient"],
  "type" : "string",
  "expression" : "Patient.extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace')",
  "xpathUsage" : "normal"
}

```
