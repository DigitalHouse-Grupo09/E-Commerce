
/**
 * APPLICATION
 */
(function (window) {
    window.app = window.app || {};
})(window);

/**
 * STORE
 */
(function (window) {
    app.store = {
        DEFAULT_KEY_PREFIX: 'app.store.'
    };

    function get (name, defaultValue, forceName) {

        try {
            let value = localStorage.getItem(!forceName ? app.store.DEFAULT_KEY_PREFIX + name : name);

            if (value != null) {
                try {
                    return JSON.parse(value);
                }
                catch (e) {
                    console.warn('Error on parse value [' + value + '].', e);
                    return value;
                }
            }
        }
        catch (e) {
            console.error('Error on get store.', e);
        }
        return defaultValue;
    }

    function set (name, value, forceName) {
        try {
            localStorage.setItem((!forceName ? app.store.DEFAULT_KEY_PREFIX + name : name), value);
        }
        catch (e) {
            console.error('Error on set store.', e);
        }
    }

    function remove (name, forceName) {
        try {
            localStorage.removeItem(!forceName ? app.store.DEFAULT_KEY_PREFIX + name : name);
        }
        catch (e) {
            console.error('Error on remove store.', e);
        }
    }

    // App Store instance
    app.store.get = get;
    app.store.set = set;
    app.store.remove = remove;
})(window);

/**
 * BANNERS
 */
(function (window) {
    const bannerTime = 5000;
    let slideIndex = 1;
    let slideTimeout;

    /**
     * @param  {number}  direction  1 for next, -1 for previous.
     */
    function changeSlides (direction) {
        showSlides(slideIndex += direction);
    }

    /**
     * @param  {number}  slide  Slide index.
     */
    function currentSlide (slide) {
        showSlides(slideIndex = slide);
    }

    function showSlides (slide) {
        const slides = document.getElementsByClassName('banner');
        const dots = document.getElementsByClassName('banner-dot');
        let i;

        if (slide > slides.length) {
            slideIndex = 1;
        }
        if (slide < 1) {
            slideIndex = slides.length;
        }

        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = 'none';
        }

        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(' active', '');
        }

        slides[slideIndex - 1].style.display = 'block';
        dots[slideIndex - 1].className += ' active';

        // Auto change slide
        if (slideTimeout) {
            clearTimeout(slideTimeout);
        }
        slideTimeout = setTimeout(() => changeSlides(1), bannerTime);
    }

    // Initialize banner
    showSlides(slideIndex);

    // App Banner instance
    app.banner = app.banner || {};
    app.banner.changeSlides = changeSlides;
    app.banner.currentSlide = currentSlide;
    app.banner.showSlides = showSlides;
})(window);

/**
 * HEADER MENU
 */
(function (window) {
    const header = document.querySelector('header');
    const trigger = document.querySelector('.header-trigger');
    const account = document.querySelector('.header-account-items');
    const menu = document.querySelector('.header-menu-items');

    trigger.onclick = () => {
        const isVisible = menu.style.display === 'block';

        menu.style.display = isVisible ? 'none' : 'block';
        menu.classList.toggle('fade');

        account.style.display = isVisible ? 'none' : 'flex';
        account.classList.toggle('fade');

        header.style.height = isVisible ? '60px' : '170px';
    };
})(window);
