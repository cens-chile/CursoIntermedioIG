# CoreClPatientDerivado - Este es el título de la guía en | R4 v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CoreClPatientDerivado**

## Resource Profile: CoreClPatientDerivado 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/curso/StructureDefinition/CoreClPatientDerivado | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:CoreClPatientDerivado |

 
Un Paciente de ejemplo para el curso fhir 

**Usages:**

* Examples for this Profile: [Patient/PatientExampleCoreCl](Patient-PatientExampleCoreCl.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.example.curso|current/StructureDefinition/CoreClPatientDerivado)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CoreClPatientDerivado.csv), [Excel](StructureDefinition-CoreClPatientDerivado.xlsx), [Schematron](StructureDefinition-CoreClPatientDerivado.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CoreClPatientDerivado",
  "url" : "http://example.org/curso/StructureDefinition/CoreClPatientDerivado",
  "version" : "0.1.0",
  "name" : "CoreClPatientDerivado",
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
  "description" : "Un Paciente de ejemplo para el curso fhir",
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
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "constraint" : [
          {
            "key" : "mail-format",
            "severity" : "error",
            "human" : "estructura del email debe ser válida",
            "expression" : "telecom[Email].empty() or (telecom[Email].exists() and telecom[Email].value.matches('^([a-z0-9_.-]+)@([a-z.-]+).([a-z.]{2,6})$'))",
            "source" : "http://example.org/curso/StructureDefinition/CoreClPatientDerivado"
          }
        ]
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "system"
            }
          ],
          "description" : "Tipo",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.telecom.extension",
        "path" : "Patient.telecom.extension",
        "min" : 1
      },
      {
        "id" : "Patient.telecom.extension:FechaContacto",
        "path" : "Patient.telecom.extension",
        "sliceName" : "FechaContacto",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/curso/StructureDefinition/fecha-contacto"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom:Telefono",
        "path" : "Patient.telecom",
        "sliceName" : "Telefono",
        "short" : "Teléfono",
        "definition" : "Teléfono de contacto",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom:Telefono.extension:FechaContacto",
        "path" : "Patient.telecom.extension",
        "sliceName" : "FechaContacto",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/curso/StructureDefinition/fecha-contacto"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom:Telefono.system",
        "path" : "Patient.telecom.system",
        "min" : 1,
        "patternCode" : "phone"
      },
      {
        "id" : "Patient.telecom:Telefono.value",
        "path" : "Patient.telecom.value",
        "min" : 1
      },
      {
        "id" : "Patient.telecom:Email",
        "path" : "Patient.telecom",
        "sliceName" : "Email",
        "short" : "Email",
        "definition" : "Email de contacto",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom:Email.extension:FechaContacto",
        "path" : "Patient.telecom.extension",
        "sliceName" : "FechaContacto",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/curso/StructureDefinition/fecha-contacto"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom:Email.system",
        "path" : "Patient.telecom.system",
        "min" : 1,
        "patternCode" : "email"
      },
      {
        "id" : "Patient.telecom:Email.value",
        "path" : "Patient.telecom.value",
        "min" : 1
      }
    ]
  }
}

```
