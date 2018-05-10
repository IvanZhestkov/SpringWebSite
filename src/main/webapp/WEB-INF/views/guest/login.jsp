<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 30.04.2018
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="csrf-token" content="VVCo3ugMzjBUnFpgVbGODsUuUgl7Aemz3kIGt8uW">

    <link rel="shortcut icon" type="image/x-icon" href="https://roadtothedream.com/favicon.ico">

    <title>Road to the Dream</title>
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

</head>
<body>

<div id="useCookieNotice">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 inner">Мы используем Cookies для предоставления Вам лучшего сервиса.
                <button id="useCookieNoticeAgreeButton">Ok</button>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row" id="logo_row">
        <div class="col-xs-6 col-xs-offset-3 col-md-4 col-md-offset-4"><a href="/home"><img
                class="img-responsive"
                src="/resources/images/logo.png">
        </a>
        </div>
    </div>
</div>

<div class="container  " id="search_input_container">
    <div class="row">
        <div class="col-xs-12">
            <form id="search_input_form">
                <input type="hidden" name="_token" value="VVCo3ugMzjBUnFpgVbGODsUuUgl7Aemz3kIGt8uW">
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
                <li><span
                        class="glyphicon glyphicon-shopping-cart menu_button" aria-hidden="true"></span> <span
                        id="cart_total_quantity_mobile">0</span></li>
            </ul>
        </div>
    </div>
</div>

<div class="hidden-md hidden-lg cool_font" id="main_mobile_submenu">
    <div class="submenu_item">Мужчины</div>
    <div class="submenu_item">Женщины</div>
    <div class="submenu_item">Аксессуары</div>
</div>

<div class="separator"></div>

<!-- Header ends here -->


<div class="container">

    <div class="row">
        <div class="col-xs-12">
            <div id="breadcrumbs">
                Главная /
                Вход
            </div>
        </div>
    </div>


    <div class="row" id="auth_row">

        <div class="col-md-6 col-md-offset-3">
            <div class="auth_header">Вход</div>

            <div class="auth_page_descr">Для более удобного и быстрого оформления заказов на нашем сайте Вам нужно войти
                в Свой аккаунт. <a class="animate_on_hover underline" href="/registration"
                                   style="color: rgb(51, 51, 51);">Ещё нет аккаунта?</a></div>


            <form method="post" action="/login">

                <input type="text" class="form-control rd_input" name="username" placeholder="Имя пользователя"
                       value="">
                <input type="password" class="form-control rd_input" name="password" placeholder="Пароль">
                <label class="rd_checkbox_label">
                    <input type="checkbox" name="remember"> Запомнить меня
                </label>
                <button type="submit" class="animate_on_hover_bg auth_button"
                        style="background-color: rgb(51, 51, 51);">Войти
                </button>

                <%
                    if (request.getParameter("error") != null) {
                %>
                <h4>Неправильно введены логин или пароль</h4>
                <%
                    }
                %>

                <div class="forgot_pass_link_wrap">
                    <a class="animate_on_hover underline"
                       style="color: rgb(119, 119, 119);">Забыли свой пароль?</a>
                </div>
            </form>
        </div>

    </div>
</div>

<br><br><br>


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
                    <div class="item"><a class="animate_on_hover">Аккаунт</a></div>
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
</html>
