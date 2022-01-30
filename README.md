# Materiales para Construcción

## Aclaraciones sobre el ejercicio

Este ejercicio est pensado para resolver usando _herencia_ y _validaciones_. Es importante **no repetir código ni ideas** (por ejemplo usando `super`) y que si **un objeto que no puede cumplir con lo que le piden al recibir mensaje rompa con error**.

Además
- El ejercicio es **individual** y se entrega **pusheando a este repositorio** como en las entregas anteriores. Recomendamos _ir pusheando cada cierto tiempo_ para evitar inconvenientes, lo ideal es después de cada punto resuelto.
- No se tendrán en cuenta los commits realizados después de la hora de finalización del examen.
- Una vez hecho el _push_ final, **verifiquen en github.com** que haya quedado la versión final. Nosotros corregiremos lo que está en github, si ustedes lo pueden ver ahí entonces nosotros también.
- No olvidarse de **los conceptos aprendidos**: polimorfismo, delegación, buenas abstracciones, no repetir lógica, guardar vs calcular, lanzar excepción cuando un método no puede cumplir con su responsabilidad, etc. Eso es lo que se está evaluando.
- La solución del examen consiste en la **implementación de un programa** que resuelva los requerimientos pedidos y sus **tests automatizados**.
- Este enunciado es acompañado con un archivo `.wtest` que tiene diseñado los test a realizar. Es importante aclarar que:
  - Estos tests se proponen para facilitar el desarrollo. Se puede diseñar otros si así se considera necesario.
  - El conjunto de tests propuesto es suficiente para este ejercicio. No hace falta agregar nuevos, pero tampoco se prohibe hacerlo.
  - Todos los objetos allí usados se asumen como instancias de una clase. Si el diseño de la solución utiliza objetos bien conocidos en algunos casos entonces se debe remover la declaración de la variable y la línea en que se sugiere la instanciación
  - Según el diseño de la solución, es probable que se requiera agregar más objetos a los sugeridos en los tests
  - Los tests están comentados de manera de poder _ir incorporándolos a medida que se avanza_ con la solución del ejercicio




## Contexto

En el mercado de la construcción es necesario comprar materiales.
Ciertos comercios se encargan de vender productos. De cada producto se sabe:
- si es **metalico**
- si es **árido**
- el **peso**

## 1.Vender Productos
No cualquier comercio puede vender cualquier producto. Este sistema se acota a:

- **Vendedora de Hierros**: Solo puede vender productos metálicos
- **Corralón**: Es una vendedora de hierros que además puede vender también áridos
- **Corralón Mayorista**: Es un corralón (vende metales y áridos) 
                          pero solo vende productos cuyo peso sea mayor a 70

Interesa poder consultarle a un comercio que productos ha vendido

### Requerimientos:
- 1.1. Saber si un comercio puede vender un producto 
- 1.2. Vender un producto (el comercio debe guardar los productos que ha vendido)
- 1.3. Saber todos los productos vendidos de un comercio   

### Ejemplo

Ejemplos de producto:

- alambre de fardo: es metálico, no es árido y pesa 1
- malla de hierro: es metálico, no es árido y pesa 75
- viruta de aluminio: es metálica, es árida y pesa 2
- viga de acero: es metálica, no es árida y pesa 300
- bolsa de cemento: no es metálica, es árida y pesa 50
- cerámica: no es metálica, no es árida y pesa 2

Comercios:

- Una vendedora de hierro solo puede vender de los productos de ejemplo: 
  alambre de fardo, malla de hierro, viruta de alumninio y viga de acero.
 
- Un corralón solo puede vender de los productos de ejemplo: 
  alambre de fardo, malla de hierro, viruta de alumninio, viga de acero y bolsa de cemento.

- Un corralón mayorista solo puede vender de los productos de ejemplo: 
  malla de hierro y la viga de acero.
  

## 2. Ferretería

Una ferretería es una vendedora de hierro que maneja un stock. El stock es el conjunto
de productos que tiene disponible para vender. Solo puede vender metales 
(porque es una vendedora de hierros) que además se encuentren en el stock.
Cuando vende un producto el mismo se remueve del stock.

### Requerimientos
- Debe cumplir con las cosas pedidas para los comercios del punto 1 
- Debe poder consultarse el stock

### Ejemplo
Una ferretería que tiene en stock alambre de fardo, viruta de aluminio y ceramica solamente
puede vender alambre de fardo y viruta de aluminio (porque la ceramica no es metálica).

Además tener en cuenta que con un stock así no podría vender dos veces el mismo producto, ya
que al venderlo por primera vez se removería del stock.

## 3. Vendedoras de Hierros Burocráticas

- Las vendedores de hierros burocráticas solo pueden vender productos metálicos (por ser vendedoras de hierros)
pero además debe cumplirse que el producto sea aprobado por **todos** los **consultores** 
que se le configuran.

Solamente se pide resolver dos tipos de consultores:
- Consultor por peso: El producto no puede superar el peso máximo determinado para cada aprobador
- Consultor por unidad: Se le configura específicamente los productos que aprueba.

### Requerimientos
- Debe cumplir con las cosas pedidas para los comercios del punto 1 

### Ejemplo

Una vendedora de hierros burocrática puede tener un consultor por peso de hasta 90 kilos.

Mientras que otra vendedora burocrática puede tener a un consultor por peso de hasta 90 kilos
y a un consultor por unidad que apruebe solamente la viga de acero, la viruta de aluminio
y el alambre de fardo

En el primer caso solo podrían venderse de entre los productos de ejemplos: 
 alambre de fardo, virtua de alumnio y malla de hierro.
 
Mientras que en el segundo caso solo podrían venderse de entre los ejemplos:
 la viruta de aluminio y el alambre de fardo



