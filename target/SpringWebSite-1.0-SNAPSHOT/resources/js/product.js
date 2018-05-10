$(function() {
$(function() {

	// Switching main photo on product page
	$('#preview_list .preview_item').click(function() {
        $(this).parent().find('.preview_item').removeClass('active').css('opacity', 0.9);
        $(this).addClass('active').css('opacity', 1);
        var imgSrc = $(this).find('img').attr('src');
        $('#active_photo_area img').attr('src', imgSrc);
    });

	// Fade in and fade out preview photos list on product page
    $('#preview_list .preview_item').hover(function() {
        $(this).fadeTo(100, 1);
    }, function() {
        if (!$(this).hasClass('active')) {
            $(this).fadeTo(100, 0.9);
        }
    });


	// Custom select element hendlers
	$(window).click(function() {
		$('.select_custom .options').hide();
	});

	$('.select_custom .current').click(function(e) {
		e.stopPropagation();
		var width = $(this).closest('.select_custom').width();
		$(this).closest('.select_custom').find('.options').width(width).toggle();
	});

	$('.select_custom .option').click(function(e) {
		e.stopPropagation();
		var option = $(this);
		var text  = option.text();
		var value = option.attr('data-value');
		var select = option.closest('.select_custom');
		select.find('.current .text').text(text);
		select.find('.value').val(value);
		option.closest('.options').hide();

		getStockItemStatus();
	});

	// Custom input(number) element hendlers
	$('.input_number .minus').click(function() {
		var textElem = $(this).closest('.input_number').find('.text');
		var text = textElem.text();
		if (text - 1 < textElem.attr('data-min')) {
			return false;
		}
		text--;
		textElem.text(text);
		$(this).closest('.input_number').find('.value').val(text);

		getStockItemStatus();
	});

	$('.input_number .plus').click(function() {
		var textElem = $(this).closest('.input_number').find('.text');
		var text = textElem.text();
		if (text + 1 > textElem.attr('data-max')) {
			return false;
		}
		text++;
		textElem.text(text);
		$(this).closest('.input_number').find('.value').val(text);

		getStockItemStatus();
	});

    // Get stock item status
    var messages = $('.add_to_cart_message');
    var addToCartButton = $('#add_to_cart_btn');
    var exceededMessages = $('.add_to_cart_message.exceeded');
	var soldOutMessages = $('.add_to_cart_message.sold_out');
	var endingMessages = $('.add_to_cart_message.ending');
	var inStockMessages = $('.add_to_cart_message.in_stock');
	var addedMessages = $('.add_to_cart_message.added');

    function getStockItemStatus() {
    	var productId = $('#product_id').val();
    	var sizeId = $('#size_id').val();
    	var quantity = $('#quantity').val();


    	$.ajax({
			url: '/product/get-stock-item-status',
			method: 'POST',
			data: {productId: productId, sizeId: sizeId, quantity: quantity},
			dataType: 'JSON',
			success: function(data) {
				if (!data.success) {
					return false;
				}

				messages.hide();

				if (data.stockItemStatus == 'ok') {
					inStockMessages.show();
					addToCartButton.removeClass('disabled');
				} 
				else if (data.stockItemStatus == 'sold_out') {
					soldOutMessages.show();
					addToCartButton.addClass('disabled');
				}
				else if (data.stockItemStatus == 'exceeded') {
					exceededMessages.show();
					addToCartButton.addClass('disabled');
				} 
				else if (data.stockItemStatus == 'ending') {
					endingMessages.show();
					addToCartButton.removeClass('disabled');
				}
			}
		});			

    }

	// Add product to cart
	$('#add_to_cart_btn').click(function() {

		var productId = $('#product_id').val();
    	var sizeId = $('#size_id').val();
    	var quantity = $('#quantity').val();

    	if (!sizeId) {	
    		return false;
    	}

    	$.ajax({
			url: '/cart/add',
			method: 'POST',
			data: {productId: productId, sizeId: sizeId, quantity: quantity},
			dataType: 'JSON',
			success: function(data) {

				messages.hide();

				if (data.success) {

					messages.hide();
					addedMessages.find('#reservation_time_left').text(data.reservationTimeLeft);
					addedMessages.show();
					$('#cart_total_quantity').text(data.cartTotalQuantity);
					$('#cart_total_quantity_mobile').text(data.cartTotalQuantity);

				} else {

					if (data.stockItemStatus == 'sold_out') {
						soldOutMessages.show();
						addToCartButton.addClass('disabled');
					}
					else if (data.stockItemStatus == 'exceeded') {
						exceededMessages.show();
						addToCartButton.addClass('disabled');
					}
				}
			}
		});			
	});	


	// open/close popup hendlers
	$('#show_dimension_table').on('click', function() {
		$('.popup').show();
	});

	$('.close_popup_btn').on('click', function() {
		$('.popup').hide();
	});

	$(document).keyup(function(e) {
	    if (e.keyCode == 27) {
	  	    $('.popup').hide();
	    }
	});

	

})});