/**
 * BUSKET
 */
(function () {
    let templateProductRow = _.template(_.unescape($('#product-row').html()));
    let tableProducts = $('#products-table tbody');
    let totalProducts = $('#products-total');

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

    function render () {
        let basket = JSON.parse(localStorage.getItem('basket') || '[]');
        let total = 0;

        tableProducts.empty();
        basket.forEach(product => {
            total += Number(product.amount);
            tableProducts.append($(templateProductRow({ product })));
        });

        totalProducts.text(`$ ${numeral(total).format('0,0.00')}`);

        countProductsOnBasket();
    }

    $(() => render());
})();
