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
        let author;
        let attributes;

        //
        // functions
        //
        function prepararCampos () {
            title = document.getElementById('title');
            description = document.getElementById('description');
            price = document.getElementById('price');
            discount = document.getElementById('discount');
            category = document.getElementById('category');
            author = document.getElementById('author');
            attributes = {
                selects: document.querySelectorAll('.select-attribute'),
                inputs: document.querySelectorAll('.input-attribute')
            };
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
            author.addEventListener('blur', () => validarVacio(author));

            for (let select of attributes.selects) {
                select.addEventListener('blur', () => validarVacio(select));
            }
            for (let input of attributes.inputs) {
                input.addEventListener('blur', () => validarVacio(input));
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
            for (let select of attributes.selects) {
                valid = validarVacio(select) && valid;
            }
            for (let input of attributes.inputs) {
                valid = validarVacio(input) && valid;
            }
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