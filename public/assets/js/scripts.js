
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
    let slideIndex = 1;

    // Next/previous controls
    function changeSlides (n) {
        showSlides(slideIndex += n);
    }

    // Thumbnail image controls
    function currentSlide (n) {
        showSlides(slideIndex = n);
    }

    function showSlides (n) {
        let slides = document.getElementsByClassName('banner');
        let dots = document.getElementsByClassName('banner-dot');
        let i;

        if (n > slides.length) {
            slideIndex = 1;
        }
        if (n < 1) {
            slideIndex = slides.length;
        }

        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = 'none';
        }

        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(' active', '');
        }

        slides[slideIndex-1].style.display = 'block';
        dots[slideIndex-1].className += ' active';
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
