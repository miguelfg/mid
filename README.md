# Material para clase de Datashare en máster de investigación

## Descripción

## Preguntas

- Como evitar descargar los NLP models en clase?? 
- Settings : Parser Parallelism ??
## Datos

* BOE
* TCU
  - https://www.rendiciondecuentas.es/es/noticias/InformesAprobados.html
* Apache Lista de Correo
  - Emails
* Alcaldías
  - Spreadsheets

### Extra

- Wikileaks
  * https://archive.org/details/RenderedSyria
  * https://web.archive.org/web/20161109152810/https://file.wikileaks.org/file/podesta-emails/podesta-emails.mbox-2016-11-06.gz
  
## Descargar

https://datashare.icij.org/

## Documentación

https://datashare.icij.org/

## Instalar

- Windows https://icij.gitbook.io/datashare/windows/install-datashare-on-windows
  - Homebrew
- Apple https://icij.gitbook.io/datashare/mac/install-datashare-on-mac
  - Homebrew
  - Docker
- Linux https://icij.gitbook.io/datashare/linux/install-datashare-on-linux
  - Standalone (jar)
  - Docker

### Actualizar

- Docker

1. Parar Datashare
1. Descargar un nuevo script de una versión nueva
1. Dar persmisos de ejecución al script
1. Ejecutar el script

### Instalar Docker

https://docs.docker.com/engine/install/

## Resetear

- Borrar index y ficheros
- Borrar ficheros
- Borrar índice elasticsearch
- Borrar cola redis

## Settings

- Idioma
- ...

## Analizar

### Extraer texto

### NER (Named Entity Recognition)

- Extraer Nombres, Lugares y Organizaciones
- Filtrar
- Mostrar en vista de documento
- Borrar

### Extraer Emails

## Buscar

### Vista Documento

1. Texto extraído
1. Vista previa
1. Etiquetas y detalles
1. Entidades identificadas

### Buscar en campos específicos

### Búsqueda dentro del Documento

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

### Percepciones/Estadísticas

### Búsquedas simples

- Inicio
- 
- 
- Borrar filtros
- 
- 
- 
- 

### Búsquedas avanzadas

1. Operadores de búsqueda: AND, OR, NOT
1. Exact phrase ""
1. Fuzziness ~
1. Proximity 
1. Wildcards ?
1. Boosting operators
1. Regex
1. Campos de meteadata
1. operadores >,=,<
1. rango de números

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

### Buscar por lotes

### Historial de archivos visitados

## Modo Servidor

https://github.com/ICIJ/datashare/wiki/Datashare-Server-Mode

## Github

## Soporte

https://github.com/ICIJ/datashare/wiki/Datashare-Support

## FAQ

https://icij.gitbook.io/datashare/faq/table-of-contents

## Guías

1. Añadir documentos
1. Filtrar documentos
1. Buscar documentos
1. Busqueda con operadores y regex
1. Etiquetar documentos
1. Atajos de teclado
1. Búsquedas masivas (por lotes)


# Traducción

https://crowdin.com/project/datashare/invite/public?show_welcome&d=c5db50c77f3f3beb9c363ae8e596f2b01136183

# Customize

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

## Otros

### Instalar fuentes

https://vitux.com/how-to-install-truetype-fonts-in-ubuntu/
