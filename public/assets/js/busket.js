/**
 * BUSKET
 */
(function (window) {
    //
    // constants
    //
    const successClassIsValid = 'is-valid';
    const errorClassIsInvalid = 'is-invalid';

    (function () {
        //
        // constants
        //
        const templateProductRow = _.template(_.unescape($('#product-row').html()));
        const templateProductInput = _.template(_.unescape($('#product-input').html()));
        const terms = $('#terms');
        const form = $('#form-cart-checkout');
        const btn = $('#btn-cart-checkout');

        //
        // variables
        //
        let tableProducts = $('#products-table tbody');
        let totalProducts = $('#products-total');

        //
        // events
        //
        $(document).on('click', '.remoteToCard', function (e) {
            const id = e.currentTarget.dataset.id;
            let basket = JSON.parse(localStorage.getItem('basket') || '[]');

            basket = basket.filter(product => product.id !== id);
            localStorage.setItem('basket', JSON.stringify(basket));

            toast.success({
                text: 'El libro fue eliminado correctamente.',
                timeout: 4000
            });

            render();
        });

        function attachEvents () {
            // Prevent unnecesary attach
            if (!btn.length) {
                return;
            }

            terms.on('change', function () {
                const $checkbox = $(this);

                if ($checkbox.is(':checked')) {
                    $checkbox.attr('checked', true);
                    btn.attr('disabled', false);
                    btn.removeAttr('disabled');
                }
                else {
                    $checkbox.attr('checked', false);
                    $checkbox.removeAttr('checked');
                    btn.attr('disabled', true);
                }
            });
        }

        //
        // functions
        //
        function render () {
            renderUI();
            renderForm();
        }

        function renderUI () {
            let basket = JSON.parse(localStorage.getItem('basket') || '[]');
            let total = 0;

            // Clean all products
            tableProducts.empty();

            // Render products on bucket
            basket.forEach(product => {
                total += Number(product.amount);
                tableProducts.append($(templateProductRow({ product })));
            });

            totalProducts.text(`$ ${numeral(total).format('0,0.00')}`);

            countProductsOnBasket();
        }

        function renderForm () {
            let basket = JSON.parse(localStorage.getItem('basket') || '[]');

            // Clean all previous inputs
            form.find('input.selected-books-checkout').remove();

            // Render products on bucket
            basket.forEach(product => {
                form.append($(templateProductInput({ product })));
            });
        }

        //
        // init
        //
        window.addEventListener('load', () => {
            render();
            attachEvents();
        });
    })();



    /**
     * Checkout - Form
     */
    (function (window) {
        //
        // constants
        //
        const form = document.getElementById('form-cart-checkout');

        //
        // source code
        //
        if (!form) {
            return;
        }

        //
        // variables
        //
        let name;
        let email;
        let address;
        let cardName;
        let cardNumber;
        let cardDate;
        let cardCode;

        //
        // functions
        //
        function prepararCampos () {
            name = document.getElementById('full_name');
            email = document.getElementById('email');
            address = document.getElementById('address');
            cardName = document.getElementById('card_name');
            cardNumber = document.getElementById('card_number');
            cardDate = document.getElementById('card_date');
            cardCode = document.getElementById('card_code');
        }

        function agregarValidaciones () {
            form.addEventListener('submit', function (e) {
                if (!validarCampos()) {
                    e.preventDefault();
                    return false;
                }
                return true;
            });

            name.addEventListener('blur', () => validarVacio(name));
            email.addEventListener('blur', () => validarVacio(email));
            address.addEventListener('blur', () => validarVacio(address));
            cardName.addEventListener('blur', () => validarCardVacio(cardName));
            cardNumber.addEventListener('blur', () => validarCardVacio(cardNumber));
            cardDate.addEventListener('blur', () => validarCardVacio(cardDate));
            cardCode.addEventListener('blur', () => validarCardVacio(cardCode));
        }

        function validarCampos () {
            let valid = true;

            // Ejecuto la validacion del campo y "valid", para que se ejecuten todas las validaciones.
            // PEROO... cualquiera de ellas que devuelva "false", entonces siempre valid sera "false".
            valid = validarVacio(name) && valid;
            valid = validarVacio(email) && valid;
            valid = validarVacio(address) && valid;
            valid = validarCardVacio(cardName) && valid;
            valid = validarCardVacio(cardNumber) && valid;
            valid = validarCardVacio(cardDate) && valid;
            valid = validarCardVacio(cardCode) && valid;
            return valid;
        }

        function getPaymentMethod () {
            return $('[name=payment_method]:checked').val();
        }

        function validarCardVacio (input) {
            return getPaymentMethod() === 'card' ? validarVacio(input) : true;
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
