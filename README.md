# grafica-mapa

Función que genera un plot de un mapa al ingresarle la información de la longitud y latitud en formato vector de mínimo a máximo y en formato raster la matriz de datos a plotear

Como variables de entrada a la misma hay que indicar los siguientes parámetros:

* mar.inf: margen inferior de la figura a plotear
* mar.izq: margen izquierdo de la figura a plotear
* mar.sup: margen superior de la figura a plotear
* mar.der: margen derecho de la figura a plotear
* long: vector secuencial de menor a mayor de la longitud correspondiente a los datos
* lat: vector secuencial de menor a mayor de la latitud correspondiente a los datos
* z: raster de la matriz a graficar (puede ser un raster enmascarado o no)
* rango.x: vector de dos posiciones indicando el rango en x (longitud) en donde setear el frame del ploteo
* rango.y: vector de dos posiciones indicando el rango en y (latitud) en donde setear el frame del ploteo
* col: vector 'character' de colores en formato hexadecimal para cada una de las categorías del plot del mapa
* breaks: vector 'numeric' de los valores entre cada categoría del plot del mapa
* lab.breaks: vector 'character' de los rótulos entre cada categoría del plot del mapa
* titulo.mapa: character para nombre del título del mapa
