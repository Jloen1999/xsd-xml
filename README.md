# Actividad Evaluable XSLT Clanes
> [!important]
> La empresa DawGames busca automatizar la generación de páginas web para mostrar la información de los diferentes clanes que conforman el mundo de uno de sus videojuegos y ha decidido encargarte a ti el trabajo. Estas páginas están destinadas a mostrar información general del Clan, los guerreros que lo componen, así como sus habilidades y estadísticas. La información de cada Clan se encuentra almacenada en diferentes documentos XML. Como ejemplo, te han proporcionado tres documentos XML con información específica de tres clanes distintos. Además, el departamento de diseño te ha proporcionado una plantilla HTML junto con su hoja de estilos CSS correspondiente, para darle al resultado final el aspecto visual deseado.
>
# Actividad 1 (2 puntos): 
A partir de los documentos XML proporcionados, donde cada uno recoge información de un clan, queremos generar un documento XSL que transforme los XML en páginas web similares a la plantilla que se ha proporcionado. Se deberán tener en cuenta las siguientes consideraciones: El formato de salida será HTML. Se usará como base la plantilla HTML+CSS proporcionada. Se creará un documento XSL en el que se incluya un plantilla (xsl:template) sobre el elemento raíz de forma que: ▪ El título de la página web (etiqueta tittle) muestre el nombre del clan. ▪ La web usará la gama de colores indicada en el XML mediante los elementos “color”. ▪ En la cabecera (header) debe aparecer: - El logo del Clan - - - El nombre del Clan El emblema del clan La descripción del clan.  

![image](https://github.com/Jloen1999/xsd-xml/assets/74373827/f49c2310-f22d-40b4-950a-f74ec3952224)

# Actividad 2 (2 puntos): 
Modificar la plantilla XSL anterior para incluir los siguientes requisitos: La plantilla debe mostrar un listado de los mejores integrantes del clan teniendo en cuenta lo siguiente: ▪ En la sección principal (main) se mostrarán los integrantes principales del clan y su líder. (Para diferencial al líder de los integrantes principales y secundarios existe un atributo en el XML llamado rol). ▪ Para cada integrante del clan, mostraremos su nombre, raza, nivel, su imagen y sus habilidades. ▪ Además, se mostrará la puntuación del guerrero, calculando la suma de todos los puntos de sus habilidades y se mostrará en la capa correspondiente del HTML superpuesta a la imagen. ▪ Cada una de las habilidades (FUE, DES, …) mostrará su valor en la barra de progreso correspondiente.   
![image](https://github.com/Jloen1999/xsd-xml/assets/74373827/4dd9fafa-6f18-48d9-b5a0-d5a8f9100539)
![image](https://github.com/Jloen1999/xsd-xml/assets/74373827/151d43da-e717-4403-97bc-3fdf26ac51b6)
![image](https://github.com/Jloen1999/xsd-xml/assets/74373827/fa722706-f59b-42a0-a46d-7a09cb7941f5)

# Actividad 3 (2 puntos): 
Modificar la plantilla XSL anterior para incluir los siguientes requisitos: La plantilla debe mostrar un listado de los distintos integrantes del clan teniendo en cuenta lo siguiente: ▪ En la sección secundaria (div) se mostrarán los integrantes secundarios del clan. (Para diferencial al líder de los integrantes principales y secundarios existe un atributo en el XML llamado rol). ▪ Para cada integrante del clan, mostraremos su nombre, raza, nivel, su imagen y sus habilidades. ▪ Además, se mostrará la puntuación del guerrero, calculando la suma de todos los puntos de sus habilidades y se mostrará en la capa correspondiente del HTML superpuesta a la imagen. ▪ Cada una de las habilidades (FUE, DES, …) mostrará su valor en la barra de progreso correspondiente.     

![image](https://github.com/Jloen1999/xsd-xml/assets/74373827/1911bef7-4625-4f8a-9811-7ed115ac8e91)

# Actividad 4 (2 puntos): 
Se incluirán en la plantilla XSL las distintas estadísticas del clan: Se debe mostrar en esta sección, un listado enumerado de los guerreros más fuertes de todo el clan, ordenados de mayor a menor fuerza. Para cada elemento de la lista se incluirá el nombre y la cantidad de fuerza que posee. Se usará el formato “1. Nombre – FUE: x” (donde x es la fuerza del integrante del clan). Además, también se debe mostrar en esta sección, un listado enumerado de los guerreros más nivel, ordenados de mayor a menor nivel. Para cada elemento de la lista se incluirá el nombre y el nivel que posee. Se usará el formato “1. Nombre – nivel: x” (donde x es el nivel del integrante del clan).   
![image](https://github.com/Jloen1999/xsd-xml/assets/74373827/41f23dfd-6c38-4f4c-9b03-663bebf9f0b1)
