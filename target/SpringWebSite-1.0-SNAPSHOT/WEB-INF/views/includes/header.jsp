<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div class="col-xs-6 col-xs-offset-3 col-md-4 col-md-offset-4">
            <a href="/home"><img
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
                <input type="hidden" name="_token" value="ixmMYOoSZM7C2oDgYvzToKnJwroJ4Acgy1I0MHQz">
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
        <div class="col-md-1" id="cart_col">
            <a class="animate_on_hover" href="/user/cart">
                <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
                <span id="cart_total_quantity"></span>
            </a>
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
                <li><span class="glyphicon glyphicon-shopping-cart menu_button" aria-hidden="true"></span> <span
                        id="cart_total_quantity_mobile">0</span></li>
            </ul>
        </div>
    </div>
</div>

<div class="hidden-md hidden-lg cool_font" id="main_mobile_submenu">
    <div class="submenu_item"><a>Мужчины</a></div>
    <div class="submenu_item"><a>Женщины</a></div>
    <div class="submenu_item"><a>Аксессуары</a></div>
</div>

<div class="separator"></div>
