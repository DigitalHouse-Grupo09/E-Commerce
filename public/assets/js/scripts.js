
/**
 * APPLICATION
 */
(function (window) {
    window.app = window.app || {};
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
        let slides = document.getElementsByClassName('banner');
        let dots = document.getElementsByClassName('banner-dot');
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

    // Add slider to app
    window.app = window.app || {};
    window.app.banner = window.app.banner || {};
    window.app.banner.changeSlides = changeSlides;
    window.app.banner.currentSlide = currentSlide;
    window.app.banner.showSlides = showSlides;
})(window);
