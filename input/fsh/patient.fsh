// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: CoreClPatientDerivado
Parent: CorePacienteCl
Description: "Un Paciente de ejemplo para el curso fhir"
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Tipo"
* telecom ^slicing.ordered = false
* telecom.extension contains fecha-contacto named FechaContacto 0..* MS
* telecom.extension[FechaContacto] 1..1  MS
// Contains rule
* telecom contains Telefono 1..1 MS SU and Email 0..1 MS SU
// Set properties of each slice
* telecom[Telefono] ^short = "Teléfono"
* telecom[Telefono] ^definition = "Teléfono de contacto"
* telecom[Telefono].system = #phone 
* telecom[Telefono].value 1..1
// Set properties of each slice
* telecom[Email] ^short = "Email"
* telecom[Email] ^definition = "Email de contacto"
* telecom[Email].system = #email 
* telecom[Email].value 1..1
* obeys mail-format


Invariant:   mail-format
Description: "estructura del email debe ser válida"
Severity:    #error
Expression:  "telecom[Email].empty() or (telecom[Email].exists() and telecom[Email].value.matches('^([a-z0-9_.-]+)@([a-z.-]+).([a-z.]{2,6})$'))"


Instance: PatientExampleCoreCl
InstanceOf: CoreClPatientDerivado
Description: "An example of a patient with a license to krill."
* identifier
  * value = "163373629"
* name[NombreOficial]
  * family = "Medina"
  * given = "Alejandro"
* telecom[Telefono]
  * extension[FechaContacto] = FechaContactoInstance
  * system = #phone
  * value = "984019586"
* telecom[Email]
  * extension[FechaContacto] = FechaContactoInstance
  * system = #email
  * value = "asd@asd"
* gender = #male
* birthDate = "1986-11-08"

Instance: FechaContactoInstance
InstanceOf: fecha-contacto
Usage: #inline

* valueDateTime = "1983-03-24"

Profile:     ExamplePatientProfile
Id:          example-patient-profile
Parent:      Patient
Title:       "Example Patient Profile"
Description: "Example of a profile of Patient"

* name 1..1 MS SU
  * given 1..1 MS SU
  * family 1..1 MS SU
    * ^short = "Last Name"
    * ^definition = "The family name (often called 'last name') of the patient."
    * ^maxLength = 50

* birthDate 1..1 MS SU
  * ^short = "Date of Birth"
  * ^definition = "The date of birth of the patient."
  * ^minValueDate = "1900-01-01"
* extension contains patient-birthPlace named LugarNacimiento 1..1 MS



