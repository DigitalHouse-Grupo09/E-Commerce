<div id="top"></div>

# E-Commerse - DH Venture Capital


<!-- INDEX -->
## Indice

* [Introducción][introduction].
	- [Equipo][team].
    - [Inspiración][inspiration].
* [Comenzando][getting_started].
	- [Descargar][download].
	- [Correr][run].


<!-- INTRODUCTION -->
## Introducción

E-Commerse - DH Venture Capital es un sistema de venta de libros online.


<!-- INTRODUCTION :: FEATURES -->
### Descripción técnica

#### Cliente
Ve el listado de archivos. Puede buscar libros, mirar el detalle (precio, escritor, etc), comprar (o no) y contactarse con el web master (ayuda, queja, mejora).

> **PROXIMAMENTE!** https://dhventure-capital.e-commerse.com

```
Usuario final (cliente)
    * inicio (última busqueda, libros populares, etc)
    * buscar libros
    * pág. de listado de libros
    * pág. de detalle del libro seleccionado
    * solicitar libro
    * contacto (ayuda, queja, mejora)
```


#### Administrador
Maneja el backoffice. Ingresa al sistema por medio de un login. Puede hacer el alta, baja o modificación de los libros, puede ver la lista de libros existentes y puede dar de alta, baja y/o modificar otros usuarios.

> **PROXIMAMENTE!** https://dhventure-capital.e-commerse.com/admin

```
Administrador (adminitradores logeados)
    * login (usuario y password)
    * explorar libros
        + subir libro
        + borrar libro (pausar/cancelar/deshabilitar)
        + modificar
```


<!-- INTRODUCTION :: TEAM -->
### Equipo

#### Nombre
- Denominación fiscal: **Grupo 09**
- Denominación de fantasia: **Globant**

#### Integrantes
 * [Cristian Besada](https://github.com/cristianebes)
 * [Paloma Gras](https://github.com/PalomaG11)
 * [Sergio Abadia](https://github.com/Garasaki)
 * [Nicolas Molina](https://github.com/comodinx)

### Inspiración

 * https://tienda.planetadelibros.com.ar
 * https://www.buscalibre.com.ar
 * https://www.tematika.com
 * https://www.cuspide.com
 * https://www.tiendadelibros.com.ar
 * https://www.casadellibro.com/libros
 * https://www.bajalibros.com/AR
 * https://listado.mercadolibre.com.ar/libros#D[A:libros]

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Comenzando

### Descargar

1. Clonar el repositorio
   ```sh
   git clone https://github.com/DigitalHouse-Grupo09/E-Commerce.git Grupo09-E-Commerce
   ```
3. Movernos a la carpeta creada
   ```sh
   cd Grupo09-E-Commerce
   ```
3. Instalar las dependencias de NodeJs
   ```sh
   npm i
   ```

### Correr

```shell
# modo desarrollo - observación de cambio en tiempo real
npm run dev

# producción
npm start
```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- deep links -->
[introduction]: #introducción
[team]: #equipo
[inspiration]: #inspiración
[getting_started]: #comenzando
[download]: #descargar
[run]: #correr
