<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <link rel="shortcut icon" type="image/x-icon" href="https://roadtothedream.com/favicon.ico">

    <title>Корзина | Road to the Dream</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://roadtothedream.com/vendor/html5shiv-3.7.3.min.js"></script>
    <script src="https://roadtothedream.com/vendor/respond-1.4.2.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" type="text/css" href="/resources/css/app.css">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery-1.12.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>

    <script src="/resources/js/jquery.color-2.1.2.min.js"></script>

    <script src="/resources/js/common.js"></script>

    <script src="/resources/js/cart.js"></script>
</head>
<body class="">

<jsp:include page="includes/header.jsp"/>

<!-- Header ends here -->


<div class="container">

    <div class="row">
        <div class="col-xs-12">
            <div id="breadcrumbs">
                <a class="animate_on_hover" href="/home">Главная</a> /
                Корзина
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-12">
            <table class="table" id="cart_table">
                <tbody>
                <tr>
                    <th class="product_cell">Товар</th>
                    <th class="cost_cell">Стоимость</th>
                </tr>

                <c:forEach items="${orders}" var="order">

                    <tr class="cart_item">

                        <td class="product_cell">
                            <a
                                    class="item_image"><img src="${order.getProduct().getImageUrl()}"></a>
                            <a
                                    class="title animate_on_hover">${order.getProduct().getTitle()}</a>
                            <a data-id="19941" class="remove_btn animate_on_hover"
                               href="/user/fromCart/order/${order.getId()}/delete">Удалить</a>
                        </td>

                        <td class="cost_cell">
                            <div class="cost"><span class="cost_amount">${order.getProduct().getPrice()} RUB</span>
                            </div>
                        </td>
                    </tr>

                </c:forEach>

                <tr>
                    <td><a href="/products/men" id="to_continue" class="animate_on_hover"><span
                            class="glyphicon glyphicon-menu-left" aria-hidden="true"></span> Продолжить покупки</a></td>
                    <td colspan="2" id="total">

                        Итого: <span id="total_cost">${sum}</span>

                    </td>
                </tr>


                </tbody>
            </table>

        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 cart_page_button_wrap">
            <a href="">
                <button class="animate_on_hover_bg cart_page_button" id="checkout_button" type="button">Оформление
                    заказа
                </button>
            </a>
        </div>
    </div>


</div>


<!-- Footer starts here -->

<div id="footer_pusher" style="height: 236px;"></div>


<jsp:include page="includes/footer.jsp"/>

</body>
</html>