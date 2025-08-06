(function ($) {
    "use strict";
    
    // Dropdown on mouse hover
    $(document).ready(function () {
        function toggleNavbarMethod() {
            if ($(window).width() > 992) {
                $('.navbar .dropdown').on('mouseover', function () {
                    $('.dropdown-toggle', this).trigger('click');
                }).on('mouseout', function () {
                    $('.dropdown-toggle', this).trigger('click').blur();
                });
            } else {
                $('.navbar .dropdown').off('mouseover').off('mouseout');
            }
        }
        toggleNavbarMethod();
        $(window).resize(toggleNavbarMethod);
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Vendor carousel
    $('.vendor-carousel').owlCarousel({
        loop: true,
        margin: 29,
        nav: false,
        autoplay: true,
        smartSpeed: 1000,
        responsive: {
            0:{
                items:2
            },
            576:{
                items:3
            },
            768:{
                items:4
            },
            992:{
                items:5
            },
            1200:{
                items:6
            }
        }
    });


    // Related carousel
    $('.related-carousel').owlCarousel({
        loop: true,
        margin: 29,
        nav: false,
        autoplay: true,
        smartSpeed: 1000,
        responsive: {
            0:{
                items:1
            },
            576:{
                items:2
            },
            768:{
                items:3
            },
            992:{
                items:4
            }
        }
    });


    // Product Quantity
    $('.quantity button').on('click', function () {
        var button = $(this);
        var oldValue = button.parent().parent().find('input').val();
        if (button.hasClass('btn-plus')) {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        button.parent().parent().find('input').val(newVal);
    });
    
})(jQuery);

console.log("Global script attached!");

window.addEventListener("message", (event) => {
    const eventData = event.data;
    let loggedIn = false;
    
    const jsonData = JSON.parse(eventData);
    console.log('Socket Message', jsonData);
    loggedIn = jsonData.status === 'loggedIn';
    
    if(loggedIn) {
        const user = {
            access_token: "",
            organizationId:"67ac78b641f3e43f93473810",
            projectId:"68626fe9b307486bc6b5276b"
        };
        localStorage.setItem("crafterVadinUser", JSON.stringify(user));
    } else {
        const userData = localStorage.getItem("crafterVadinUser");
        const user = JSON.parse(userData);
        if(!user.access_token) {
            localStorage.setItem("crafterVadinUser", "");
        }
    }
    checkAuth();
});

document.addEventListener("DOMContentLoaded", () => {
    checkAuth();
});

function checkAuth() {
    const notAuthenticatedArea = document.getElementById("not-authenticated-area");
    const authenticatedArea = document.getElementById("authenticated-area");
    const user = localStorage.getItem("crafterVadinUser");
    if(user) {
        authenticatedArea.style.display = "block";
        notAuthenticatedArea.style.display = "none";
    } else {
        authenticatedArea.style.display = "none";
        notAuthenticatedArea.style.display = "flex";
    }
}

