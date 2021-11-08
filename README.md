# E-Commerse - DH Venture Capital

## Indice

* [Introducción][introduction].
	- [Equipo][team].
* [Comenzando][getting_started].
	- [Descargar][download].
	- [Correr][run].

## Introducción

E-Commerse - DH Venture Capital es un sistema de venta de libros online.

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

### Equipo

#### Nombre
- Denominación fiscal: **Grupo 09**
- Denominación de fantasia: **Globant**

#### Integrantes
 * [Cristian Besada](https://github.com/cristianebes)
 * [Paloma Gras](https://github.com/PalomaG11)
 * [Sergio Abadia](https://github.com/Garasaki)
 * [Nicolas Molina](https://github.com/comodinx)

## Comenzando

### Descargar

```shell
$ git clone https://github.com/DigitalHouse-Grupo09/E-Commerce.git Grupo09-E-Commerce
$ cd Grupo09-E-Commerce
$ npm i
```

### Correr

```shell
# modo desarrollo - observación de cambio en tiempo real
npm run dev

# producción
npm start
```

<!-- deep links -->
[introduction]: #introducción
[team]: #equipo
[getting_started]: #comenzando
[download]: #descargar
[run]: #correr
