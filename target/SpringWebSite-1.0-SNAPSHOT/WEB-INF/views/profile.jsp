<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0042)https://roadtothedream.com/account/profile -->
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="csrf-token" content="JNnFtU8WX4ssD08zXWLtFFZgYgghiPLLAq0k7pmd">

    <link rel="shortcut icon" type="image/x-icon" href="https://roadtothedream.com/favicon.ico">

    <title>Аккаунт | Road to the Dream</title>
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

    <script src="/resources/js/profile.js"></script>
</head>
<body class="">

<jsp:include page="includes/header.jsp"/>

<!-- Header ends here -->


<div class="container">

    <div class="row">
        <div class="col-xs-12">
            <div id="breadcrumbs">
                <a class="animate_on_hover" href="/home">Главная</a> /
                Аккаунт
            </div>
        </div>
    </div>


    <div class="row">

        <div class="col-md-2">
            <div id="sidebar">
                <div class="sidebar_list">
                    <ul>
                        <li><a class="animate_on_hover" href="/user/profile">Профиль</a>
                        </li>
                        <li><a class="animate_on_hover" href="/user/logout">Выйти</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-10">

            <div class="row">
                <div class="col-xs-12">
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <dl class="profile_data">
                        <dt>Фамилия</dt>
                        <dd>
                            <c:if test="${not empty user.lastname}">
                                ${user.lastname}
                            </c:if>
                            <c:if test="${empty user.lastname}">
                                -
                            </c:if>
                        </dd>

                        <dt>Имя</dt>
                        <dd>${user.username}</dd>

                        <dt>Отчество</dt>
                        <dd>-</dd>

                        <dt>E-Mail</dt>
                        <dd>${user.email}</dd>

                        <dt>Телефон</dt>
                        <dd>-</dd>

                        <dt>Улица</dt>
                        <dd>-</dd>

                        <dt>Дом, квартира</dt>
                        <dd>-</dd>

                        <dt>Город</dt>
                        <dd>-</dd>

                        <dt>Область</dt>
                        <dd>-</dd>

                        <dt>Страна</dt>
                        <dd>-</dd>

                        <dt>Почтовый код</dt>
                        <dd>-</dd>
                    </dl>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 profile_rd_button_wrap">

                    <a href="/user/editProfile" class="animate_on_hover_bg rd_button">Редактировать</a>

                </div>
            </div>

        </div>

    </div>

</div>


<!-- Footer starts here -->

<div id="footer_pusher" style="height: 236px;"></div>

<jsp:include page="includes/footer.jsp"/>


</body>
</html>
