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
