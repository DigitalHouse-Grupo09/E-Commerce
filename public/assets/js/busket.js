/**
 * BUSKET
 */
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
