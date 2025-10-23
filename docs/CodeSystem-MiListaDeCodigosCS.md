# Mi lista de Códigos - Este es el título de la guía en | R4 v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mi lista de Códigos**

## CodeSystem: Mi lista de Códigos (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/curso/CodeSystem/MiListaDeCodigosCS | *Version*:0.1.0 |
| Active as of 2023-11-07 | *Computable Name*:MiListaDeCodigosCS |

 
Mi Lista de Codigos Especial Propia 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MiListaDeCodigosVS](ValueSet-MiListaDeCodigosVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MiListaDeCodigosCS",
  "language" : "en-US",
  "url" : "http://example.org/curso/CodeSystem/MiListaDeCodigosCS",
  "version" : "0.1.0",
  "name" : "MiListaDeCodigosCS",
  "title" : "Mi lista de Códigos",
  "status" : "active",
  "experimental" : true,
  "date" : "2023-11-07",
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
  "description" : "Mi Lista de Codigos Especial Propia",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "1",
      "display" : "Left arm"
    },
    {
      "code" : "2",
      "display" : "Right arm"
    },
    {
      "code" : "3",
      "display" : "Left leg"
    },
    {
      "code" : "4",
      "display" : "Right leg"
    },
    {
      "code" : "5",
      "display" : "Oral route"
    },
    {
      "code" : "6",
      "display" : "Unknown"
    }
  ]
}

```
