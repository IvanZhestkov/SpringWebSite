$(function() {

    // CSRF protection
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    // Animation on hover of menu items, links, buttons, etc.
	$('.animate_on_hover').hover(function(){            
        $(this).animate({
            color: '#777'
        }, 100);            
    },
    function(){
        $(this).animate({
            color: '#333'
        }, 100);          
    });

    $('.animate_on_hover_bg').hover(function(){            
        $(this).animate({
            backgroundColor: '#777'
        }, 100);            
    },
    function(){
        $(this).animate({
            backgroundColor: '#333'
        }, 100);          
    });

    // Search string handlers
    $('.show_search_input_button').click(function() {
    	$('#search_input_container').fadeIn(100).find('input').focus();
    });

    $('#hide_search_input_button').click(function() {
    	$('#search_input_container').removeClass('visible').fadeOut(100);
    });

    $(document).keyup(function(e) {
        if (e.keyCode == 27) {
            $('#search_input_container').removeClass('visible').fadeOut(100);
        }
    });

    // Mobile menu handler
    $('#main_mobile_submenu_button').click(function() {
        $('#main_mobile_submenu').slideToggle('fast');
    });

    $('#search_input_form').submit(function(e) {
        e.preventDefault();
        var query = $('#search_input').val();
        query = query.replace(' ', '');
        if (query == '') {
            return false;
        }

        window.location.replace(location.origin + '/search?q=' + query);
    });

    if (!getCookie('useCookieNoticeAgree')) {
        $('#useCookieNotice').slideDown();
    }

    $('#useCookieNoticeAgreeButton').click(function() {
        setCookie('useCookieNoticeAgree', true, {
            expires: 157680000,
            path: '/'
        });
        $('#useCookieNotice').slideUp();
    });

    // Adjust footer height
    $(window).on("load", function() {
        $('#footer_pusher').height($('#footer').height());
        $('body').removeClass('very_high_body_before_all_images_loaded');
    });
    
    $(window).resize(function() {
        $('#footer_pusher').height($('#footer').height());
    });

    // Switching currencies
    $('#select_currency').change(function() {
        var currency = $(this).val();
        window.location.replace(location.origin + location.pathname + '?currency=' + currency);
    });
    
});

// Functions for cookies manipulation
function getCookie(name) {
  var matches = document.cookie.match(new RegExp(
    "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
  ));
  return matches ? decodeURIComponent(matches[1]) : undefined;
}

function setCookie(name, value, options) {
  options = options || {};

  var expires = options.expires;

  if (typeof expires == "number" && expires) {
    var d = new Date();
    d.setTime(d.getTime() + expires * 1000);
    expires = options.expires = d;
  }
  if (expires && expires.toUTCString) {
    options.expires = expires.toUTCString();
  }

  value = encodeURIComponent(value);

  var updatedCookie = name + "=" + value;

  for (var propName in options) {
    updatedCookie += "; " + propName;
    var propValue = options[propName];
    if (propValue !== true) {
      updatedCookie += "=" + propValue;
    }
  }

  document.cookie = updatedCookie;
}

function deleteCookie(name) {
  setCookie(name, "", {
    expires: -1
  })
}