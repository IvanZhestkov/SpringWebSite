<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0074)https://roadtothedream.com/men/bottoms/road-to-the-dream-joggers-logo-gray -->
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="csrf-token" content="C3G2GQ3yZLO7ZmxBcZf3TCojwO0rw0A13KID0oX5">

    <link rel="shortcut icon" type="image/x-icon" href="https://roadtothedream.com/favicon.ico">

    <title>Road to the Dream Джоггеры Logo – Серый</title>
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

    <script src="/resources/js/jquery.zoom.min.js"></script>
    <script src="/resources/js/product.js"></script>
</head>
<body class="">


<div class="container">
    <div class="row" id="logo_row">
        <div class="col-xs-6 col-xs-offset-3 col-md-4 col-md-offset-4"><a href="/home"><img
                class="img-responsive"
                src="/resources/images/logo.png">
        </a></div>
    </div>
</div>

<div class="container  " id="search_input_container">
    <div class="row">
        <div class="col-xs-12">
            <form id="search_input_form">
                <input type="hidden" name="_token" value="C3G2GQ3yZLO7ZmxBcZf3TCojwO0rw0A13KID0oX5">
                <input type="text" id="search_input" placeholder="Начните печатать ..." value="">
            </form>
            <span class="glyphicon glyphicon-remove animate_on_hover" id="hide_search_input_button" aria-hidden="true">

        </span></div>
    </div>
</div>

<div class="container visible-lg-block visible-md-block cool_font">
    <div class="row" id="main_menu_row">
        <div class="col-lg-10 col-lg-offset-1 col-md-11">
            <ul>
                <li><a class="animate_on_hover" href="/products/men">Мужчины</a></li>
                <li><a class="animate_on_hover" href="/products/woman">Женщины</a></li>
                <li><a class="animate_on_hover" href="/admin/users">Пользователи</a></li>
                <li><a class="animate_on_hover" href="/admin/addProduct">Добавить товар</a></li>
                <li><span class="glyphicon glyphicon-search animate_on_hover menu_button show_search_input_button"
                          aria-hidden="true"></span></li>
            </ul>
        </div>
    </div>
</div>

<div class="container visible-xs-block visible-sm-block cool_font">
    <div class="row" id="main_mobile_menu_row">
        <div class="col-xs-12">
            <ul>
                <li><span class="glyphicon glyphicon-menu-hamburger menu_button" id="main_mobile_submenu_button"
                          aria-hidden="true"></span></li>
                <li><span class="glyphicon glyphicon-search menu_button show_search_input_button"
                          aria-hidden="true"></span></li>
                <li><a href="https://roadtothedream.com/cart"><span
                        class="glyphicon glyphicon-shopping-cart menu_button" aria-hidden="true"></span> <span
                        id="cart_total_quantity_mobile">0</span></a></li>
            </ul>
        </div>
    </div>
</div>

<div class="separator"></div>

<!-- Header ends here -->


<div class="container">


    <div class="row">

    </div>

    <form action="/admin/addProduct" method="post" enctype="multipart/form-data">
        <div class="row" style="margin-top: 4%;">
            <div class="col-sm-12 col-md-7">

                <div class="row" id="product_photos_row">
                    <div class="col-xs-2" id="preview_list_col">

                    </div>

                    <div class="col-xs-10">
                    <span class="zoom" id="active_photo_area" style="position: relative; overflow: hidden;">
                        <img id="blah" src="http://proxyprivat.com/images/noimage.jpeg"
                             alt="Road to the Dream Джоггеры Logo – Серый" class="img-responsive">
                    </span>
                        <input type='file' name="file" id="imgInp"/>
                        <!--                    <img id="blah" src="#" alt="your image" />-->
                    </div>
                </div>

            </div>


            <div class="col-sm-12 col-md-5" id="product_data">
                <div class="row">
                    <div class="col-xs-12">
                        <h1 id="product_title">
                            <input type="text" placeholder="Название" name="title">
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12">
                        <div id="product_price"><input type="text" placeholder="Цена" name="price"></div>
                    </div>
                </div>

                <input type="hidden" id="product_id" value="39">


                <div class="row">
                    <div class="col-xs-6">
                        <div class="product_attribute">
                            <div class="title">Категория</div>
                            <select name="category">
                                <option value="men">Мужчины</option>
                                <option value="woman">Женщины</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-xs-6">
                        <div class="product_attribute">
                            <div class="title">Количество</div>
                            <div class="input">

                                <div class="input_number">
                                    <div class="minus"><span class="glyphicon glyphicon-minus animate_on_hover"
                                                             aria-hidden="true"></span></div>
                                    <div class="text" data-min="1">1</div>
                                    <div class="plus"><span class="glyphicon glyphicon-plus animate_on_hover"
                                                            aria-hidden="true" style="color: rgb(51, 51, 51);"></span>
                                    </div>

                                    <input class="value" type="hidden" name="count" id="quantity" value="1">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <%
                    if (request.getParameter("error") != null) {
                %>
                <h4>Не все поля заполнены</h4>
                <%
                    }
                %>

                <div class="row add_to_cart_message sold_out" style="display: none;">
                    <div class="col-xs-12">
                        <div class="inner">
                            Распродано
                        </div>
                    </div>
                </div>

                <div class="row add_to_cart_message exceeded" style="display: none;">
                    <div class="col-xs-12">
                        <div class="inner">
                            Указанное количество недоступно
                        </div>
                    </div>
                </div>

                <div class="row add_to_cart_message ending" style="display: none;">
                    <div class="col-xs-12">
                        <div class="inner">
                            Заканчивается
                        </div>
                    </div>
                </div>

                <div class="row add_to_cart_message in_stock" style="display: none;">
                    <div class="col-xs-12">
                        <div class="inner">
                            Есть в наличии
                        </div>
                    </div>
                </div>


                <div class="row add_to_cart_message added" style="display: none;">
                    <div class="col-xs-12">
                        <div class="inner">
                            Товар зарезервирован для вас на <span id="reservation_time_left"></span> мин. <br><a
                                href="https://roadtothedream.com/checkout/user-info">Оформить заказ</a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <input class="btn btn-dark" style="width: 100%;" type="submit" value="Добавить"/>
                </div>

            </div>
        </div>
    </form>
</div>

<!-- Footer starts here -->

<div id="footer_pusher" style="height: 237px;"></div>

<div id="footer">
    <div class="separator"></div>
    <div class="container" id="footer_container">

        <div class="row">
            <div class="col-md-2 col-xs-6">
                <div class="col_header">Информация</div>
                <div class="col_list">
                    <div class="item"><a class="animate_on_hover">О нас</a></div>
                    <div class="item"><a class="animate_on_hover">Условия использования</a></div>
                    <div class="item"><a class="animate_on_hover">Доставка</a></div>
                    <div class="item"><a class="animate_on_hover">Политика возврата</a></div>
                </div>
            </div>

            <div class="col-md-2 col-xs-6">
                <div class="col_header">Клиент</div>
                <div class="col_list">
                    <div class="item"><a class="animate_on_hover" href="/user/profile">Аккаунт</a></div>
                    <div class="item"><a class="animate_on_hover">Поддержка</a></div>
                </div>
            </div>

            <div class="col-md-3 col-xs-6">
                <div class="col_header">Принимаем к оплате</div>
                <div class="col_list">
                    <div class="item"><img class="visa_mastercard_logo"
                                           src="/resources/images/visa_mastercard_logo.png"></div>
                </div>
            </div>

            <div class="col-md-2 col-xs-6">
                <div class="col_header">Валюта</div>
                <div class="col_list">
                    <select class="form-control" id="select_currency">
                        <option value="UAH">UAH</option>
                        <option value="RUB" selected="">RUB</option>
                        <option value="USD">USD</option>
                        <option value="EUR">EUR</option>
                    </select>
                </div>
            </div>


        </div>

        <div class="row">
            <div class="col-xs-12">
                <div class="copyright_row">© 2018 Road to the Dream</div>
            </div>
        </div>

    </div>
</div>


</body>
<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function () {
        readURL(this);
    });

</script>
</html>