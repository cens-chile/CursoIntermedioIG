# PatientExampleCoreCl - Este es el título de la guía en | R4 v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExampleCoreCl**

## Example Patient: PatientExampleCoreCl

Profile: [CoreClPatientDerivado](StructureDefinition-CoreClPatientDerivado.md)

Alejandro Medina (official) Male, DoB: 1986-11-08 ( 163373629)

-------

| | |
| :--- | :--- |
| Contact Detail | * ph: 984019586
* [asd@asd](mailto:asd@asd)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExampleCoreCl",
  "meta" : {
    "profile" : [
      "http://example.org/curso/StructureDefinition/CoreClPatientDerivado"
    ]
  },
  "identifier" : [
    {
      "value" : "163373629"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Medina",
      "given" : ["Alejandro"]
    }
  ],
  "telecom" : [
    {
      "extension" : [
        {
          "url" : "http://example.org/curso/StructureDefinition/fecha-contacto",
          "valueDateTime" : "1983-03-24"
        }
      ],
      "system" : "phone",
      "value" : "984019586"
    },
    {
      "extension" : [
        {
          "url" : "http://example.org/curso/StructureDefinition/fecha-contacto",
          "valueDateTime" : "1983-03-24"
        }
      ],
      "system" : "email",
      "value" : "asd@asd"
    }
  ],
  "gender" : "male",
  "birthDate" : "1986-11-08"
}

```
