/**
 * Admin pages
 */
(function (window) {
    //
    // constants
    //
    const successClassIsValid = 'is-valid';
    const errorClassIsInvalid = 'is-invalid';

    /**
     * Admin products
     */
    (function (window) {
        window.destroyProduct = function (e, id) {
            if (confirm('¿Estás seguro? Esto es permanente!')) {
                document.getElementById('product-' + id + '-delete-form').submit();
            }
            else {
                e.preventDefault();
                e.stopPropagation();
            }
        }
    })(window);

    /**
     * Admin products - Create
     */
    (function (window) {
        //
        // constants
        //
        const form = document.getElementById('form-products-add');

        //
        // source code
        //
        if (!form) {
            return;
        }

        //
        // variables
        //
        let title;
        let description;
        let price;
        let discount;
        let category;
        let categorySelector;
        let categoryNew;
        let author;
        let authorSelector;
        let authorNew;

        //
        // functions
        //
        function prepararCampos () {
            title = document.getElementById('title');
            description = document.getElementById('description');
            price = document.getElementById('price');
            discount = document.getElementById('discount');
            category = document.getElementById('category');
            categorySelector = document.getElementById('category-selector');
            categoryNew = document.getElementById('category-new');
            author = document.getElementById('author');
            authorSelector = document.getElementById('author-selector');
            authorNew = document.getElementById('author-new');
        }

        function agregarValidaciones () {
            form.addEventListener('submit', function (e) {
                if (!validarCampos()) {
                    e.preventDefault();
                    return false;
                }
                return true;
            });

            title.addEventListener('blur', () => validarVacio(title));
            description.addEventListener('blur', () => validarVacio(description));
            price.addEventListener('blur', () => validarAmount(price));
            discount.addEventListener('blur', () => validarPercentage(discount));
            category.addEventListener('blur', () => validarVacio(category));
            category.addEventListener('change', manejarSelectorCategoria);
            author.addEventListener('blur', () => validarVacio(author));
            author.addEventListener('change', manejarSelectorAutor);
        }

        function manejarSelectorCategoria () {
            const value = category.value;

            if (!value || Number(value) > -1) {
                categoryNew.style.display = 'none';
                categoryNew.classList.remove('fade');
                categorySelector.classList.remove('pl-0');
                categorySelector.classList.remove('md:column-2');
                categorySelector.classList.add('md:column-1');
                categorySelector.classList.add('p-0');
            }
            else {
                categorySelector.classList.remove('p-0');
                categorySelector.classList.remove('md:column-1');
                categorySelector.classList.add('md:column-2');
                categorySelector.classList.add('pl-0');
                setTimeout(() => {
                    categoryNew.style.display = 'block';
                    categoryNew.classList.add('fade');
                }, 400);
            }
        }

        function manejarSelectorAutor () {
            const value = author.value;

            if (!value || Number(value) > -1) {
                authorNew.style.display = 'none';
                authorNew.classList.remove('fade');
                authorSelector.classList.remove('pl-0');
                authorSelector.classList.remove('md:column-2');
                authorSelector.classList.add('md:column-1');
                authorSelector.classList.add('p-0');
            }
            else {
                authorSelector.classList.remove('p-0');
                authorSelector.classList.remove('md:column-1');
                authorSelector.classList.add('md:column-2');
                authorSelector.classList.add('pl-0');
                setTimeout(() => {
                    authorNew.style.display = 'block';
                    authorNew.classList.add('fade');
                }, 400);
            }
        }

        function validarCampos () {
            let valid = true;

            // Ejecuto la validacion del campo y "valid", para que se ejecuten todas las validaciones.
            // PEROO... cualquiera de ellas que devuelva "false", entonces siempre valid sera "false".
            valid = validarVacio(title) && valid;
            valid = validarVacio(description) && valid;
            valid = validarAmount(price) && valid;
            valid = validarPercentage(discount) && valid;
            valid = validarVacio(category) && valid;
            valid = validarVacio(author) && valid;
            return valid;
        }

        function init () {
            prepararCampos();
            agregarValidaciones();
        }

        //
        // Initialize form
        //
        init();
    })(window);

    /**
     * Admin products - Update
     */
    (function (window) {
        //
        // constants
        //
        const form = document.getElementById('form-products-edit');

        //
        // source code
        //
        if (!form) {
            return;
        }

        //
        // variables
        //
        let title;
        let description;
        let price;
        let discount;
        let category;
        let categorySelector;
        let categoryNew;
        let author;
        let authorSelector;
        let authorNew;

        //
        // functions
        //
        function prepararCampos () {
            title = document.getElementById('title');
            description = document.getElementById('description');
            price = document.getElementById('price');
            discount = document.getElementById('discount');
            category = document.getElementById('category');
            categorySelector = document.getElementById('category-selector');
            categoryNew = document.getElementById('category-new');
            author = document.getElementById('author');
            authorSelector = document.getElementById('author-selector');
            authorNew = document.getElementById('author-new');
        }

        function agregarValidaciones () {
            form.addEventListener('submit', function (e) {
                if (!validarCampos()) {
                    e.preventDefault();
                    return false;
                }
                return true;
            });

            title.addEventListener('blur', () => validarVacio(title));
            description.addEventListener('blur', () => validarVacio(description));
            price.addEventListener('blur', () => validarAmount(price));
            discount.addEventListener('blur', () => validarPercentage(discount));
            category.addEventListener('blur', () => validarVacio(category));
            category.addEventListener('change', manejarSelectorCategoria);
            author.addEventListener('blur', () => validarVacio(author));
            author.addEventListener('change', manejarSelectorAutor);
        }

        function manejarSelectorCategoria () {
            const value = category.value;

            if (!value || Number(value) > -1) {
                categoryNew.style.display = 'none';
                categoryNew.classList.remove('fade');
                categorySelector.classList.remove('pl-0');
                categorySelector.classList.remove('md:column-2');
                categorySelector.classList.add('md:column-1');
                categorySelector.classList.add('p-0');
            }
            else {
                categorySelector.classList.remove('p-0');
                categorySelector.classList.remove('md:column-1');
                categorySelector.classList.add('md:column-2');
                categorySelector.classList.add('pl-0');
                setTimeout(() => {
                    categoryNew.style.display = 'block';
                    categoryNew.classList.add('fade');
                }, 400);
            }
        }

        function manejarSelectorAutor () {
            const value = author.value;

            if (!value || Number(value) > -1) {
                authorNew.style.display = 'none';
                authorNew.classList.remove('fade');
                authorSelector.classList.remove('pl-0');
                authorSelector.classList.remove('md:column-2');
                authorSelector.classList.add('md:column-1');
                authorSelector.classList.add('p-0');
            }
            else {
                authorSelector.classList.remove('p-0');
                authorSelector.classList.remove('md:column-1');
                authorSelector.classList.add('md:column-2');
                authorSelector.classList.add('pl-0');
                setTimeout(() => {
                    authorNew.style.display = 'block';
                    authorNew.classList.add('fade');
                }, 400);
            }
        }

        function validarCampos () {
            let valid = true;

            // Ejecuto la validacion del campo y "valid", para que se ejecuten todas las validaciones.
            // PEROO... cualquiera de ellas que devuelva "false", entonces siempre valid sera "false".
            valid = validarVacio(title) && valid;
            valid = validarVacio(description) && valid;
            valid = validarAmount(price) && valid;
            valid = validarPercentage(discount) && valid;
            valid = validarVacio(category) && valid;
            valid = validarVacio(author) && valid;
            return valid;
        }

        function init () {
            prepararCampos();
            agregarValidaciones();
        }

        //
        // Initialize form
        //
        init();
    })(window);

    /**
     * Helper functions 
     */
    function validarVacio (campo) {
        campo.classList.remove(successClassIsValid);
        campo.classList.remove(errorClassIsInvalid);
        delete campo.dataset.error;

        if (!campo.value) {
            mostrarError(campo, 'Este campo es requerido');
            return false;
        }
        else {
            campo.classList.add(successClassIsValid)
            return true;
        }
    }

    function validarTamanio (campo, min, max) {
        const tamanio = Number(campo.value);

        if (tamanio < min || tamanio > max) {
            mostrarError(campo, `Por favor ingrese un valor entre ${min} y ${max}`);
            return false;
        }
        else {
            campo.classList.add(successClassIsValid)
            return true;
        }
    }

    function validarAmount (campo) {
        return validarVacio(campo) && typeof Number(campo.value) === 'number' && !isNaN(Number(campo.value)) && validarTamanio(campo, 0, 9999999);
    }

    function validarPercentage (campo) {
        return validarVacio(campo) && typeof Number(campo.value) === 'number' && !isNaN(Number(campo.value)) && validarTamanio(campo, 0, 100);
    }

    function mostrarError (campo, mensaje) {
        const errorContainer = document.querySelector(`#${campo.id}-error`);

        campo.classList.add(errorClassIsInvalid);
        errorContainer.innerText = mensaje;
    }
})(window);