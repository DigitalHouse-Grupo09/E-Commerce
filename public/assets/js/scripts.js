
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

        if (!slides.length) {
            return;
        }

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

        header.style.height = isVisible ? '65px' : '170px';
    };
})(window);


/**
 * CAPTCHA
 */

// document.querySelector() is used to select an element from the document using its ID
let captchaText = document.querySelector('#captcha');
var ctx = captchaText.getContext("2d");
ctx.font = "40px Roboto";
ctx.fillStyle = "#ebebeb";

let userText = document.querySelector('#textBox');
let submitButton = document.querySelector('#submitButton');
let output = document.querySelector('#output');
let refreshButton = document.querySelector('#refreshButton');

// alphaNums contains the characters with which you want to create the CAPTCHA
let alphaNums = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
let emptyArr = [];
// This loop generates a random string of 7 characters using alphaNums
// Further this string is displayed as a CAPTCHA
for (let i = 1; i <= 7; i++) {
 emptyArr.push(alphaNums[Math.floor(Math.random() * alphaNums.length)]);
}
var c = emptyArr.join('');
ctx.fillText(emptyArr.join(''),captchaText.width/4, captchaText.height/2);

// This event listener is stimulated whenever the user press the "Enter" button
// "Correct!" or "Incorrect, please try again" message is
// displayed after validating the input text with CAPTCHA
userText.addEventListener('keyup', function(e) {
 // Key Code Value of "Enter" Button is 13
 if (e.keyCode === 13) {
 if (userText.value === c) {
 output.classList.add("correctCaptcha");
 output.innerHTML = "Correct!";
 } else {
 output.classList.add("incorrectCaptcha");
 output.innerHTML = "Incorrect captcha, please try again";
 }
 }
});
// This event listener is stimulated whenever the user clicks the "Submit" button
// "Correct!" or "Incorrect, please try again" message is
// displayed after validating the input text with CAPTCHA
submitButton.addEventListener('click', function() {
 if (userText.value === c) {
 output.classList.add("correctCaptcha");
 output.innerHTML = "Correct!";
 } else {
 output.classList.add("incorrectCaptcha");
 output.innerHTML = "Incorrect captcha, please try again";
 }
});
// This event listener is stimulated whenever the user press the "Refresh" button
// A new random CAPTCHA is generated and displayed after the user clicks the "Refresh" button
refreshButton.addEventListener('click', function() {
 userText.value = "";
 let refreshArr = [];
 for (let j = 1; j <= 7; j++) {
 refreshArr.push(alphaNums[Math.floor(Math.random() * alphaNums.length)]);
 }
 ctx.clearRect(0, 0, captchaText.width, captchaText.height);
 c = refreshArr.join('');
 ctx.fillText(refreshArr.join(''),captchaText.width/4, captchaText.height/2);
 output.innerHTML = "";
});