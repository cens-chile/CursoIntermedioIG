# Transacciones - Este es el título de la guía en | R4 v0.1.0

* [**Table of Contents**](toc.md)
* **Transacciones**

## Transacciones

# Transacciones

Esta es la lista de transacciones

graph TD; A-->B; A-->C; B-->D; C-->D;

erDiagram CUSTOMER }|..|{ DELIVERY-ADDRESS : has CUSTOMER ||--o{ ORDER : places CUSTOMER ||--o{ INVOICE : "liable for" DELIVERY-ADDRESS ||--o{ ORDER : receives INVOICE ||--|{ ORDER : covers ORDER ||--|{ ORDER-ITEM : includes PRODUCT-CATEGORY ||--|{ PRODUCT : contains PRODUCT ||--o{ ORDER-ITEM : "ordered in"

sequenceDiagram Alice->>John: Hello John, how are you? John-->>Alice: Great! Alice-)John: See you later!

gantt title A Gantt Diagram dateFormat YYYY-MM-DD section Section A task :a1, 2014-01-01, 30d Another task :after a1, 20d section Another Task in Another :2014-01-12, 12d another task :24d

