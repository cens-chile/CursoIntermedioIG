# Fecha de contacto - Este es el título de la guía en | R4 v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fecha de contacto**

## Extension: Fecha de contacto 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/curso/StructureDefinition/fecha-contacto | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:FechaContacto |

Fecha cuando se registro el contacto

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [CoreClPatientDerivado](StructureDefinition-CoreClPatientDerivado.md)
* Examples for this Extension: [Patient/PatientExampleCoreCl](Patient-PatientExampleCoreCl.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.example.curso|current/StructureDefinition/fecha-contacto)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fecha-contacto.csv), [Excel](StructureDefinition-fecha-contacto.xlsx), [Schematron](StructureDefinition-fecha-contacto.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fecha-contacto",
  "url" : "http://example.org/curso/StructureDefinition/fecha-contacto",
  "version" : "0.1.0",
  "name" : "FechaContacto",
  "title" : "Fecha de contacto",
  "status" : "draft",
  "date" : "2025-10-22T17:38:42-03:00",
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
  "description" : "Fecha cuando se registro el contacto",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "ContactPoint"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Fecha de contacto",
        "definition" : "Fecha cuando se registro el contacto"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/curso/StructureDefinition/fecha-contacto"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
