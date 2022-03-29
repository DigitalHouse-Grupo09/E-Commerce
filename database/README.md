<div id="top"></div>

# Bookify

## Database Scheme online

https://drawsql.app/comodinx/diagrams/bookify

## Connectar (Producción)

```sh
npm run db
```

## Instalación (Local)

```sh
mysql -u <USUARIO> -p<PASSWORD> < database.sql
```

> Reemplazar las variables `<USUARIO>` y `<PASSWORD>` por lo que corresponda.

## Tablas y base data

```sh
mysql -u <USUARIO> -p<PASSWORD> < tables.sql
```

## Data dummy (de prueba)

```sh
mysql -u <USUARIO> -p<PASSWORD> < dummies.sql
```

## Sequelize

+ Los `datos de connección`, se encuentran en la carpeta `src/database/config`. (_Desde el archivo `.env` podemos definir los datos de connección._)
+ Los `modelos` estan definidos en la carpeta `src/database/models`.

Para utilizarlos, acá les mostramos unos ejemplos,

Uso simple
```js
const db = require('./database');

db.Product
    // Buscamos todos los productos, ordenados por fecha de creación.
    .findAll({
        order: [['created_at', 'DESC']]
    })
    // Mostramos los productos en consola.
    .then(products => console.log(JSON.stringify(products, null, 2)))
    // Mostramos el error, en caso de haberlo, en consola.
    .catch(console.error);
```

Ejemplo con "scope"
```js
// ...

// El scope "fully", esta definido en la configuración del modelo "product".
// El mismo nos permite incluir todas las relaciones del producto, sin necesidad de definirlo explícitamente.
db.Product.scope('fully').findAll()
// ...
```
