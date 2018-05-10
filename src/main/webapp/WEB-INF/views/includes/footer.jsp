<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <div class="item"><a class="animate_on_hover" href="/login">Аккаунт</a></div>
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
