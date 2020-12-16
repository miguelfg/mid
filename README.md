# Workshop Datashare @ICIJ.org

Miguel Fiandor Gutiérrez

## Índice

1. Intro
    1. Qué es?
    1. Qué datos vamos a usar?
    1. Enlaces importantes
1. Documentación
1. Descargar
1. Instalar
1. Tour
    1. Añadir docs
    1. Ejecutar
    1. Analizar docs
        1. Text
        1. NER
        1. Emails
    1. Buscar
    1. Varios: ordenar, favs, ...
    1. Filtros
    1. Búsquedas por metadata
    1. Búsquedas avanzadas
    1. Búsquedas por lotes
1. Ejercicios
1. Extras: plugins, soporte, traducción, ...

### Qué es?

Datashare is a free open-source desktop application developed by non-profit International Consortium of Investigative Journalists (ICIJ).

Datashare allows investigative journalists to:

- access all their documents in one place locally on their computer while securing them from potential third-party interferences
- search pdfs, images, texts, spreadsheets, slides and any files, simultaneously
- automatically detect and filter by people, organizations and locations

### Datos

* BOE: https://www.boe.es/datosabiertos/ejemplo_script_boe.php
* TCU
  - https://www.rendiciondecuentas.es/es/noticias/InformesAprobados.html
* Apache Lista de Correo
  - Emails: https://mail-archives.apache.org/mod_mbox/lucene-java-user/
* Alcaldías
  - Spreadsheets: https://www.mptfp.gob.es/portal/politica-territorial/local/sistema_de_informacion_local_-SIL-/alcaldes_y_concejales.html
* Luxleaks: DocumentCloud

- Descargar zip https://github.com/miguelfg/mid/blob/main/datashare_demo_project.zip

### Descargar

- https://datashare.icij.org/

### Documentación

- https://icij.gitbook.io/datashare/

### Instalar

- Windows https://icij.gitbook.io/datashare/windows/install-datashare-on-windows
- Apple https://icij.gitbook.io/datashare/mac/install-datashare-on-mac
- Linux https://icij.gitbook.io/datashare/linux/install-datashare-on-linux

* NO RECOMENDADO usar las instalaciones con docker

### Actualizar

1. Desinstalar cualquier versión anterior
1. Instalar nueva versión

#### Actualizar Docker

1. Parar Datashare
1. Parar containedores docker de redis y elasticsearch
1. Eliminar imagenes de dichas versiones
1. Descargar un nuevo script de una versión nueva
1. Dar persmisos de ejecución al script
1. Ejecutar el script

### Resetear ficheros indexados

1. Parar Datashare
1. Borrar ficheros
1. Borrar índice elasticsearch
1. Borrar cola redis

#### Con docker

    docker exec -ti datashare_elasticsearch_1 curl -XDELETE http://localhost:9200/local-datashare/

    docker exec -ti datashare_redis_1 redis-cli
    127.0.0.1:6379> FLUSHALL

    docker stop datashare datashare_elasticsearch_1 datashare_redis_1 


## Tour

### Settings

- Idioma
- Plugins
- Extensiones

### Percepciones/Estadísticas

Ver número de docs

### Analizar

#### Extraer texto

#### Extraer Entidades Nombre

- Extraer Nombres, Lugares y Organizaciones
- Filtrar
- Mostrar en vista de documento
- Borrar

#### Extraer Emails

### Percepciones/Estadísticas 2

Ver número de docs

### Vista Documento

1. Texto extraído
1. Vista previa
1. Etiquetas y detalles
1. Entidades identificadas

### Busquedas simples
    hola

1. Modo vista de resultados

### Búsqueda dentro del Documento

    Ctrl+F
### Varios

- Ordenar documentos
- Favoritos
- Etiquetar documentos
- Recomendar documentos

### Filtros

1. Favoritos
1. Etiquetas
1. Recomendado por
1. Tipo de archivo
1. Fechas de creación
1. Idiomas
1. Personas
1. Organizaciones
1. Ubicaciones
1. Rutas
1. Niveles de extracción
1. Fecha de indexación

### Buscar en campos específicos

- mismo autor
- mismo lenguaje
- ...

### Búsquedas avanzadas

https://icij.gitbook.io/datashare/all/search-with-operators

1. Operadores de búsqueda: AND, OR, NOT
1. Wildcards ? *
1. Fuzziness ~
1. Exact phrase ""
1. Proximity ""~
1. Boosting operators ""^ ()^
1. Regex: ("Ada Lovelace" OR "Ado Lavelace") AND paris AND /.*\..*\@.*\..*/
1. Campos de metadata
1. operadores >,=,<: metadata.tika_metadata_creation_date:>=2010-01-01
1. rango de números: [min TO max]  {min TO max}

### Buscar por lotes

- Ejemplo 1: Alcaldes csv
- Visitar un resultado
- Ejemplo 2: Alcaldes csv con proximidad 2
- Visitar un resultado
- Ejemplo 3: Alcaldes csv sin full phrase
- Filtrar los resultados obtenidos
- Ejemplo 4: Alcaldes csv con fuzzy 2
- Descargar resultados
- Ejemplo 5: Alcaldes csv en una ruta

### Historial de archivos visitados

## Ejercicios

### Ejercicios

1. Ver preview de un BOE
1. Aplicar filtro: de 01/01/2019 a 12/01/2020
1. Aplicar filtro: de 01/01/2019 a 12/01/2020
1. Aplicar filtro por metadata.tika_metadata_author de un doc
1. Buscar por NE.location='pontevedra'
1. Instalar plugin Email
1. Ordenar valores en filtro Email por ocurrencia ascendente
1. Fechas de creación para los pdf de la carpeta BOE
1. Batch search
1. Filtrar emails: solo de 'gmail'
1. Filtrar emails: ¿hay algún hotmail?


## Extras

### Modo Servidor

- https://github.com/ICIJ/datashare/wiki/Datashare-Server-Mode

### Github

- https://github.com/ICIJ/datashare/wiki/

### Soporte

- https://github.com/ICIJ/datashare/wiki/Datashare-Support

### FAQ

- https://icij.gitbook.io/datashare/faq/table-of-contents

### Guías

1. Añadir documentos
1. Filtrar documentos
1. Buscar documentos
1. Busqueda con operadores y regex
1. Etiquetar documentos
1. Atajos de teclado
1. Búsquedas masivas (por lotes)

### Traducción

https://crowdin.com/project/datashare/invite/public?show_welcome&d=c5db50c77f3f3beb9c363ae8e596f2b01136183

### Customize

- Plugins https://github.com/ICIJ/datashare/wiki/Client-%E2%80%BA-Plugins
- Extensions https://github.com/ICIJ/datashare/wiki/Backend-%E2%80%BA-Extensions
- Backend API
- Client API
- Client Hooks
- Client Widgets
- Client Components
- Widgets
- Filters
- Pages
- Others

### Otros

#### Instalar fuentes

- https://vitux.com/how-to-install-truetype-fonts-in-ubuntu/
