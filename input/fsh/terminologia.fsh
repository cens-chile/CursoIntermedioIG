CodeSystem: MiListaDeCodigosCS 
Id: MiListaDeCodigosCS 
Title: "Mi lista de Códigos"
Description: "Mi Lista de Codigos Especial Propia"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-11-07"
* ^content = #complete
* ^language = #en-US
* ^experimental = true
* ^caseSensitive = true
* #1 "Left arm" 
* #2 "Right arm"
* #3 "Left leg"
* #4 "Right leg"
* #5 "Oral route"
* #6 "Unknown"

ValueSet: MiListaDeCodigosVS
Id: MiListaDeCodigosVS
Title: "Mi lista de Códigos"
Description: "Mi Lista de Codigos Especial"
* ^experimental = true
* include codes from system MiListaDeCodigosCS 