<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0047)https://roadtothedream.com/account/edit-profile -->
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="csrf-token" content="JNnFtU8WX4ssD08zXWLtFFZgYgghiPLLAq0k7pmd">

    <link rel="shortcut icon" type="image/x-icon" href="https://roadtothedream.com/favicon.ico">

    <title>Редактирование профиля | Road to the Dream</title>
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
<body class="">

<jsp:include page="includes/header.jsp"/>

<!-- Header ends here -->


<div class="container">

    <div class="row">
        <div class="col-xs-12">
            <div id="breadcrumbs">
                <a class="animate_on_hover" href="/home">Главная</a> /
                <a class="animate_on_hover" href="/user/profile">Аккаунт</a> /
                Редактирование профиля
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


                    <form method="post" action="/user/editProfile">

                        <input type="hidden" name="_token" value="JNnFtU8WX4ssD08zXWLtFFZgYgghiPLLAq0k7pmd">

                        <label for="surname">Фамилия</label>
                        <input type="text" class="form-control rd_input" id="surname" name="lastName"
                               value="${user.lastname}">

                        <label for="name">Имя</label>
                        <input type="text" class="form-control rd_input" id="name" name="username"
                               value="${user.username}">

                        <label for="patronymic">Отчество</label>
                        <input type="text" class="form-control rd_input" id="patronymic" name="patronymic" value="">

                        <label for="email">E-Mail</label>
                        <input type="email" class="form-control rd_input" id="email" name="email"
                               value="${user.email}">

                        <label for="phone">Телефон</label>
                        <input type="text" class="form-control rd_input" id="phone" name="phone" value="">

                        <label for="street">Улица</label>
                        <input type="text" class="form-control rd_input" id="street" name="street" value="">

                        <label for="house_apartment">Дом, квартира</label>
                        <input type="text" class="form-control rd_input" id="house_apartment" name="house_apartment"
                               value="">

                        <label for="city">Город</label>
                        <input type="text" class="form-control rd_input" id="city" name="city" value="">

                        <label for="region">Область</label>
                        <input type="text" class="form-control rd_input" id="region" name="region" value="">

                        <label for="postal_code">Почтовый код</label>
                        <input type="text" class="form-control rd_input" id="postal_code" name="postal_code" value="">


                        <div class="edit_profile_button_wrap">
                            <button class="animate_on_hover_bg rd_button" type="submit">Сохранить</button>
                        </div>
                    </form>

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
