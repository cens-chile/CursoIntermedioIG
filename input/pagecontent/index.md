# CursoIG — Guía de Implementación del curso intermedio

Bienvenido a la fuente de la Implementation Guide (IG) usada en este curso.
Este repositorio contiene definiciones en FHIR Shorthand (FSH), páginas y
los artefactos generados que la HL7 IG Publisher usa para publicar el sitio.

Flujo breve:
1. Edita `input/fsh/*.fsh` para añadir perfiles, extensiones e instancias.
2. Ejecuta `sushi -o fsh-generated` para compilar FSH → FHIR JSON/XML.
3. Ejecuta `./_genonce.sh` (usa `input-cache/publisher.jar`) para generar HTML.

Ubicaciones clave:
- `sushi-config.yaml` configura id, canonical, fhirVersion y el menú de páginas.
- `ig.ini` apunta a `fsh-generated/resources/ImplementationGuide-*.json`.
- `input/pagecontent/` contiene `.md` y `.xml` que aparecen en la web.

Consejos prácticos:
- Si falta `publisher.jar`, corre `./_updatePublisher.sh` para descargarlo.
- `_genonce.sh` detecta `tx.fhir.org` y pasará `-tx n/a` cuando esté offline.
- Asegura Java 8+ en PATH; `_genonce.sh` llama a `java -jar`.

¿Qué aprenderás aquí?
- Cómo escribir FSH simple (ej.: `input/fsh/patient.fsh`) y generar artefactos.
- Cómo mapear páginas con `sushi-config.yaml: menu:` → `input/pagecontent/`.
- Cómo publicar localmente con la IG Publisher y entender opciones de tx.
Pide un flujo CI o ejemplos adicionales y los añadiré al índice.

## Dependency Table

{% include dependency-table.xhtml %}

## Tabla de Metadata

{% sql select Name, Value from Metadata %}