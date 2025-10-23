# Mi lista de Códigos - Este es el título de la guía en | R4 v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mi lista de Códigos**

## ValueSet: Mi lista de Códigos (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/curso/ValueSet/MiListaDeCodigosVS | *Version*:0.1.0 |
| Draft as of 2025-10-22 | *Computable Name*:MiListaDeCodigosVS |

 
Mi Lista de Codigos Especial 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

* Include all codes defined in [`http://example.org/curso/CodeSystem/MiListaDeCodigosCS`](CodeSystem-MiListaDeCodigosCS.md)version 📦0.1.0

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "MiListaDeCodigosVS",
  "url" : "http://example.org/curso/ValueSet/MiListaDeCodigosVS",
  "version" : "0.1.0",
  "name" : "MiListaDeCodigosVS",
  "title" : "Mi lista de Códigos",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Mi Lista de Codigos Especial",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/curso/CodeSystem/MiListaDeCodigosCS"
      }
    ]
  }
}

```
