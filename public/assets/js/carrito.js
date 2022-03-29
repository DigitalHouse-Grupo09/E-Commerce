(function () {
    let cart=document.querySelectorAll(".addToCart");

    let products=[
    {
        name: 'Diego. Nacido para molestar',   
        price: 2900,
        inCart: 0
    },
    {
        name: 'La Bestia',   
        price: 2490,
        inCart: 0
    },
    {
        name: 'La Rueda del Tiempo',   
        price: 2490,
        inCart: 0
    },
    {
        name: 'La reina',   
        price: 1460,
        inCart: 0
    }
    ]


    //-loop with elemnents
    for (let i = 0; i < cart.length; i++) {
        cart[i].addEventListener('click', ()=> {

            cartNumbers(products[i]);
            totalCost(products[i]);
        })
    }

    function cartNumbers(product){
        let productNumbers=localStorage.getItem('cartNumbers');
        productNumbers=parseInt(productNumbers);

        if(productNumbers) {
            localStorage.setItem('cartNumbers',productNumbers+1);
            document.querySelector('.countItem').textContent=productNumbers+1;
        }
        else { 
            localStorage.setItem('cartNumbers',1);
            //console.log(document.querySelector('.countItem'));
            document.querySelector('countItem').textContent=1;
        }
    }

    function totalCost(product){
        let cartCost=localStorage.getItem('totalCost');

        if(cartCost!=null) {
            cartCost=parseInt(cartCost);
            localStorage.setItem('totalCost',cartCost+product.price);
        }
        else {
            localStorage.setItem('totalCost',product.price); 
        }
    }

    function onLoadCartNumbers(){
        let productNumbers = localStorage.getItem('cartNumbers');
        const countItem = document.querySelector('.countItem');

        if (countItem) {
            document.querySelector('.countItem').textContent=productNumbers;
        }
    }

    onLoadCartNumbers();
})();