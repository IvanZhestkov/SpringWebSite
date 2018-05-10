$(function () {

    // Remove cart item
    var removeButtonClicked = false;

    $('.remove_btn').click(function () {

        if (removeButtonClicked) {
            return false;
        }
        removeButtonClicked = true;

        var removeButton = $(this);
        var cartItemId = removeButton.attr('data-id');

        $.ajax({
            url: '/cart/delete',
            method: 'POST',
            data: {cartItemId: cartItemId},
            dataType: 'JSON',
            success: function (data) {
                if (data.success) {
                    location.reload();
                }
            }
        });
    });

    // Custom input(number) element hendlers
    $('.input_number .minus').click(function () {
        var textElem = $(this).closest('.input_number').find('.text');
        var text = textElem.text();
        if (text - 1 < textElem.attr('data-min')) {
            return false;
        }
        text--;
        textElem.text(text);
        $(this).closest('.input_number').find('.value').val(text);

        var quantityCellElem = textElem.closest('.quantity_cell');
        updateCart(quantityCellElem);
    });

    $('.input_number .plus').click(function () {
        var textElem = $(this).closest('.input_number').find('.text');
        var text = textElem.text();
        if (text + 1 > textElem.attr('data-max')) {
            return false;
        }
        text++;
        textElem.text(text);
        $(this).closest('.input_number').find('.value').val(text);

        var quantityCellElem = textElem.closest('.quantity_cell');
        updateCart(quantityCellElem);
    });

    // Update cart
    function updateCart(quantityCellElem) {
        var cartItemId = quantityCellElem.find('.text').attr('data-id');
        var quantity = quantityCellElem.find('.value').val();

        $.ajax({
            url: '/cart/update',
            method: 'POST',
            data: {cartItemId: cartItemId, quantity: quantity},
            dataType: 'JSON',
            success: function (data) {
                var errorMessage = quantityCellElem.find('.cart_exceeded_message');
                if (data.success) {
                    errorMessage.hide();

                    $('#cart_total_quantity').text(data.totalQuantity);
                    $('#cart_total_quantity_mobile').text(data.totalQuantity);
                    $('#total_cost').text(data.totalCost);
                    quantityCellElem.closest('.cart_item').find('.cost_amount').text(data.itemCost);

                } else {
                    errorMessage.show();
                }
            }
        });
    }

});